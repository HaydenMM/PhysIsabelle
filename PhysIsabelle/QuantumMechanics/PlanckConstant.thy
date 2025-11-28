(*Copyright (c) 2025 Hayden Moore. All rights reserved.*)
(*Released under Apache 2.0 license as described in the file LICENSE.*)
(*Authors: Hayden Moore*)
theory Planck_Constant
  imports Main
begin

text ‹
  Planck's constant as a positive real number, introduced axiomatically.
›

(* Planck's constant as a real number. *)
axiomatization hbar :: real
where hbar_pos: "0 < hbar"

(* Optional: define a pretty symbol for hbar. *)
notation hbar ("ℏ")

lemma hbar_nonneg: "0 ≤ ℏ"
  using hbar_pos by simp

lemma hbar_neq_zero: "ℏ ≠ 0"
  using hbar_pos by auto

end
