/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 */

import {InitialEditorStateType} from '@lexical/plain-text';
import type {EditorState, LexicalEditor} from 'lexical';

export function PlainTextPlugin(arg0: {
  contentEditable: JSX.Element | null;
  initialEditorState?: InitialEditorStateType;
  placeholder: JSX.Element | string | null;
}): JSX.Element | null;
