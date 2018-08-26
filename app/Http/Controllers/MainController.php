<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reference;
use App\Award;
use App\Education;
use App\Employment;
use App\Project;
use App\Publication;
use App\Research;
use App\ResearchFund;
use App\CurrentResearch;
use App\Supervision;
use App\Bio;
use App\Figures;
use App\PresentInvolvement;
use App\Subject;
use App\Skill;
use App\Collaboration;
use App\Affiliation;

class MainController extends Controller
{
    public function index() {
        $bio = Bio::limit(1)->get();
        $figures = Figures::limit(1)->get();
        $present_involvements = PresentInvolvement::all();
        $awards = Award::limit(3)->get();
        return view('home', compact('bio', 'figures', 'present_involvements', 'awards'));
    }

    public function resume() {
        $jobs = Employment::all();
        $degrees = Education::all();
        $database_skills = Skill::where('category', 'database')->get();
        $multimedia_skills = Skill::where('category', 'multimedia')->get();
        $high_level_language_skills = Skill::where('category', 'hll')->get();
        $tool_skills = Skill::where('category', 'tools')->get();
        $subjects_taught = Subject::all();
        $awards = Award::all();
        $references = Reference::all();
        return view('resume', compact('references', 'awards', 'database_skills', 'multimedia_skills', 'high_level_language_skills', 'tool_skills', 'subjects_taught', 'degrees', 'jobs'));
    }

    public function research() {
        $curr_research = CurrentResearch::all();
        $prev_research = Research::all();
        $research_funds = ResearchFund::all();
        $completed_supervision = Supervision::where('is_completed', true)->get();
        $undergoing_supervision = Supervision::where('is_completed', false)->get();
        return view('research', compact('curr_research', 'prev_research', 'research_funds', 'completed_supervision', 'undergoing_supervision'));
    }

    public function projects() {
        $projects = Project::all();
        return view('projects', compact('projects'));
    }

    public function publications() {
        $international_publications = Publication::where('type', 'international')->get();
        $national_publications = Publication::where('type', 'national')->get();
        $books = Publication::where('type', 'book')->get();
        $book_chapters = Publication::where('type', 'book_chapter')->get();
        $journals = Publication::where('type', 'journal')->get();
        return view('publications', compact('international_publications', 'national_publications', 'books', 'book_chapters', 'journals'));
    }

    public function collaborationsAffiliations() {
        $collaborations = Collaboration::all();
        $affiliations = Affiliation::all();
        return view('collaborations', compact('collaborations', 'affiliations'));
    }

    public function gallery() {
        return view('gallery');
    }
}
