return {
  'ggandor/lightspeed.nvim',
  config = function()
    require'lightspeed'.setup {
      jump_to_unique_chars = { safety_timeout = 400 },
      match_only_the_start_of_same_char_seqs = true,
      limit_ft_matches = 5,
      -- full_inclusive_prefix_key = '<c-x>',
    }
  end
}
