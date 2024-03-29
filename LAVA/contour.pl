# Note: Macros created by this version of Vulcan, may not work as expected in
# future versions. Please see the Vulcan Online Help for further details.

use utf8;
use Macro;


   RunMenu("TRI_CONT_CONTOUR","interactive",

      sub { PanelResults("contour_form",
                "minor_cont" => "1.0",
                "dropout_dist" => "0.0",
                "use_scheme" => "0",
                "contour_colocur_scheme" => "",
                "complement_relimit_area" => "1",
                "button_pressed" => "extfwd",
                "contour_normal" => "1",
                "range_to_cont" => "",
                "use_contour_scheme" => "1",
                "drop_rl" => "0",
                "cont_level" => "",
                "range_from_cont" => "",
                "contour_onelevel" => "0",
                "major_cont" => "5.0",
                "cont_level_z" => "0.0",
                "z_level_cont" => "1",
                "design_layer_desc" => "",
                "pattern_colour_scheme" => "",
                "one_z_level_cont" => "0",
                "normal_relimit_area" => "0",
                "design_layer_name" => "STRIP31.WEST.DZ.CONT",
                "use_pattern_scheme" => "0",
                "save_design_string" => "1",
                "post_cont_details" => "0",
                "use_boundary_polygon" => "1",
                "divider" => "",
                "cont_underlay" => "0"
                   ); },

      sub { PanelResults("contour_attributes",
                "map_distance" => "1.0",
                "least_smoothing" => "0",
                "normal_smoothing" => "0",
                "drafting_size" => "0.1",
                "zero_contour" => "0",
                "use_tri_faults" => "0",
                "minor_contour_colour" => "29",
                "button_pressed" => "finish",
                "contour_style" => "0",
                "decimals" => "0",
                "specify_smoothing" => "0",
                "subcell_reso" => "0",
                "major_contour_style" => "0",
                "one_level_contour_style" => "0",
                "extra_smoothing" => "0",
                "Remove_bull" => "0",
                "map_scale" => "1:1250",
                "one_level_contour_colour" => "1",
                "contour_filtering" => "1.0",
                "major_contour_colour" => "29",
                "contour_colour" => "1",
                "annotate_contours" => "0",
                "minor_contour_style" => "0",
                "unsmoothed" => "1",
                "annotate_dropout" => "0",
                "want_contour_colour" => "0",
                "smooth_grid" => "0",
                "divider" => "",
                "close_contour" => "0"
                   ); },

      sub { SelectObjects("STRIP31.WEST.DZ","PRU321.7","PIT\$CREST","PIT\$PROJ"); },
      "SELECT_CANCEL",
      "FINISH");

   SetActiveWindow("PRIMARY");

   RunMenu("TRI_UTE_DESELECT:R:\\06_Technical_Services\\Vulcan\\Vulcan_Survey\\As Built_Cameby_Pit\\034.Oct2016\\161010_WPS_simp50_relim.00t","interactive",
      "FINISH");



