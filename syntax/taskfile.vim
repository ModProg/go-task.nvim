" Language:   Taskfile
" Maintainer: ModProg
" URL:        https://github.com/modprog/go-task.nvim
" LICENSE:    MIT

runtime! syntax/yaml.vim

syn region          tfExpansion             start='{{' end='}}' contained containedin=yamlFlowString matchgroup=Special

syn keyword         Conditional             if else end contained containedin=tfExpansion
syn keyword         Operator                and not or eq ne lt le gt ge contained containedin=tfExpansion
syn match           Special                 "\.[A-Za-z_]*" contained containedin=tfExpansion
syn keyword         tfStringFunction        trim trimAll trimSuffix trimPrefix upper lower title repeat substr trunc "contains" hasPrefix hasSuffix quote squote cat indent nindent replace plural regexMatch mustRegexMatch regexFindAll mustRegexFindAll regexFind mustRegexFind regexReplaceAll mustRegexReplaceAll regexReplaceAllLiteral mustRegexReplaceAllLiteral regexSplit mustRegexSplit regexQuoteMeta contained containedin=tfExpansion
syn keyword         tfStringSliceFunction   join splitList split splitn sortAlpha contained containedin=tfExpansion
syn keyword         tfIntegerMathFunction   add add1 sub div mod mul max min floor ceil round randInt contained containedin=tfExpansion
syn keyword         tfIntegerSliceFunction  until untilStep seq contained containedin=tfExpansion
syn keyword         tfDateFunction          now ago date dateInZone duration durationRound unixEpoch dateModify mustDateModify htmlDate htmlDateInZone toDate mustToDate contained containedin=tfExpansion
syn keyword         tfDefaultFunction       default empty coalesce all any fromJson mustFromJson toJson mustToJson toPrettyJson mustToPrettyJson toRawJson mustToRawJson ternary contained containedin=tfExpansion
syn keyword         tfEncodingFunction      b64enc b64dec b32enc b32dec contained containedin=tfExpansion
syn keyword         tfListFunction          list first mustFirst rest mustRest last mustLast initial mustInitial append mustAppend prepend mustPrepend concat reverse mustReverse uniq mustUniq without mustWithout has mustHas compact mustCompact slice mustSlice chunk contained containedin=tfExpansion
syn keyword         tfDictFunction          dict get set unset hasKey pluck dig merge mustMerge mergeOverwrite mustMergeOverwrite keys pick omit values contained containedin=tfExpansion
syn keyword         tfConversionFunction    atoi float64 int int64 toDecimal toString toStrings contained containedin=tfExpansion
syn keyword         tfPathFunction          base dir clean ext isAbs osBase osDir osClean osExt osIsAbs contained containedin=tfExpansion
syn keyword         tfFlowControlFunction   fail contained containedin=tfExpansion
syn keyword         tfOsFunction            env expandenv contained containedin=tfExpansion
syn keyword         tfReflectionFunction    kindOf kindIs typeOf typeIs typeIsLike deepEqual contained containedin=tfExpansion
syn keyword         tfCryptFunction         sha1sum sha256sum adler32sum contained containedin=tfExpansion
syn keyword         tfTaskfileFunction      OS ARCH splitLines catLines toSlash fromSlash exeExt shellQuote contained containedin=tfExpansion

hi default link     tfStringFunction        Function
hi default link     tfStringSliceFunction   Function
hi default link     tfIntegerMathFunction   Function
hi default link     tfIntegerSliceFunction  Function
hi default link     tfDateFunction          Function
hi default link     tfDefaultFunction       Function
hi default link     tfEncodingFunction      Function
hi default link     tfListFunction          Function
hi default link     tfDictFunction          Function
hi default link     tfConversionFunction    Function
hi default link     tfPathFunction          Function
hi default link     tfFlowControlFunction   Function
hi default link     tfOsFunction            Function
hi default link     tfReflectionFunction    Function
hi default link     tfCryptFunction         Function
hi default link     tfTaskfileFunction      Function
