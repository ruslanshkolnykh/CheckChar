<#         
              .NOTES
===========================================================================
              Created on:       4/14/2021
              Created by:       Ruslan Shkolnykh
              Filename:  checkChar.ps1
===========================================================================

              .DESCRIPTION
powershell cmdlet that takes an arbitrarily long string parameter $foo (e.g. 'abcdedcba') and returns the first recurring character in that Input string
#>

              [CmdletBinding()]
              param ([string]$foo)
             
              $checked = @()
              $result = ""
              $chararray = $foo.ToLower().ToCharArray()
             
              foreach ($char in $chararray)
              {
                             if ($checked.Contains($char))
                             {
                                           $result = $char
                                           break
                             }
                             else
                             {
                                           $checked += $char
                             }
              }
              return $result
              
