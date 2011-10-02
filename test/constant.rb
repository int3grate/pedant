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

require 'test_helper'

class TestConstant < Test::Unit::TestCase

  def test_false
    diff(
      "z = FALSE;",
      '<tree><assignment><op>=</op><lvalue><identifier name="z"/></lvalue><identifier name="FALSE"/></assignment></tree>'
    )

    same(
      "z = FALSE;",
      '<tree><assignment><op>=</op><lvalue><identifier name="z"/></lvalue><integer value="0"/></assignment></tree>'
    )
  end

  def test_null
    diff(
      "z = NULL;",
      '<tree><assignment><op>=</op><lvalue><identifier name="z"/></lvalue><identifier name="NULL"/></assignment></tree>'
    )

    same(
      "z = NULL;",
      '<tree><assignment><op>=</op><lvalue><identifier name="z"/></lvalue><null/></assignment></tree>'
    )
  end

  def test_true
    diff(
      "z = TRUE;",
      '<tree><assignment><op>=</op><lvalue><identifier name="z"/></lvalue><identifier name="TRUE"/></assignment></tree>'
    )

    same(
      "z = TRUE;",
      '<tree><assignment><op>=</op><lvalue><identifier name="z"/></lvalue><integer value="1"/></assignment></tree>'
    )
  end
end
