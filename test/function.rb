################################################################################
# Copyright (c) 2011, Mak Kolybabi
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
################################################################################

require 'test/unit'

class TestFunction < Test::Unit::TestCase
  include Pedant::Test

  def test_keyword_prefix
    # While we never want to have a function with the same name as a keyword,
    # having a keyword at the start of a function name is perfectly valid.
    fail("if();")
    fail("break();")
    fail("continue();")
    fail("else();")
    fail("export();")
    fail("for();")
    fail("foreach();")
    fail("function();")
    fail("global_var();")
    fail("if();")
    fail("import();")
    fail("include();")
    fail("local_var();")
    fail("repeat();")
    fail("return();")
    fail("until();")
    fail("while();")

    # While we never want to have a function with the same name as a constant,
    # having a constant at the start of a function name is perfectly valid.
    fail("FALSE();")
    fail("NULL();")
    fail("TRUE();")

    # X is an exception. It is a valid function name, despite being a keyword.
    pass("x();")

    pass("if_();")
    pass("break_();")
    pass("continue_();")
    pass("else_();")
    pass("export_();")
    pass("for_();")
    pass("foreach_();")
    pass("function_();")
    pass("global_var_();")
    pass("if_();")
    pass("import_();")
    pass("include_();")
    pass("local_var_();")
    pass("repeat_();")
    pass("return_();")
    pass("until_();")
    pass("while_();")

    pass("FALSE_();")
    pass("NULL_();")
    pass("TRUE_();")
  end
end
