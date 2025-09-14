.class public abstract Lcom/android/server/autofill/ui/InlineSuggestionFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    move-object v2, p0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v1, v2, v3}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    new-instance p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v1, Landroid/service/autofill/InlinePresentation;

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v1, p3, v2, v3}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    .line 64
    .line 65
    .line 66
    new-instance p3, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 72
    .line 73
    invoke-direct {v3, p1, v1, p3, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 77
    .line 78
    invoke-direct {p0, v3, v0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const-string v5, "android:autofill:suggestion"

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    move-object v1, p1

    .line 89
    move-object v3, p2

    .line 90
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Landroid/view/inputmethod/InlineSuggestion;

    .line 94
    .line 95
    invoke-direct {p2, p1, p0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 96
    .line 97
    .line 98
    return-object p2
.end method

.method public static createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Z)Landroid/util/SparseArray;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 8
    .line 9
    const-string v10, "InlineSuggestionFactory"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo v1, "createInlineSuggestions(source="

    .line 14
    .line 15
    .line 16
    const-string v2, ") called"

    .line 17
    .line 18
    invoke-static {v1, v8, v2, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v11, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 22
    .line 23
    new-instance v12, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {v12, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    move v13, v1

    .line 34
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v13, v2, :cond_6

    .line 39
    .line 40
    move-object/from16 v14, p2

    .line 41
    .line 42
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v15, v2

    .line 47
    check-cast v15, Landroid/service/autofill/Dataset;

    .line 48
    .line 49
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-gez v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "AutofillId="

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " not found in dataset"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v15, v2}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    const-string v2, "InlinePresentation not found in dataset"

    .line 93
    .line 94
    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_1
    move-object/from16 v18, v10

    .line 98
    .line 99
    move-object/from16 v19, v11

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_2
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    const-string v4, "android:autofill:suggestion"

    .line 110
    .line 111
    :goto_2
    move-object v5, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    const-string v4, "android:autofill:action"

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_3
    const/4 v7, 0x0

    .line 117
    if-nez v1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v15, v2}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v11, v0, v8, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    :cond_4
    move/from16 v16, v1

    .line 131
    .line 132
    move-object/from16 v17, v2

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    move/from16 v16, v1

    .line 136
    .line 137
    move-object/from16 v17, v7

    .line 138
    .line 139
    :goto_4
    new-instance v6, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;

    .line 140
    .line 141
    invoke-direct {v6, v9, v15, v13}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    .line 142
    .line 143
    .line 144
    move/from16 v4, p4

    .line 145
    .line 146
    invoke-static {v11, v13, v3, v4}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v2, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 153
    .line 154
    .line 155
    move-result-object v18

    .line 156
    invoke-virtual {v3}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v19

    .line 160
    invoke-virtual {v3}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    .line 161
    .line 162
    .line 163
    move-result v20

    .line 164
    move-object v1, v2

    .line 165
    move-object v8, v2

    .line 166
    move-object/from16 v2, v18

    .line 167
    .line 168
    move-object/from16 v18, v10

    .line 169
    .line 170
    move-object v10, v3

    .line 171
    move-object/from16 v3, p1

    .line 172
    .line 173
    move-object/from16 v4, v19

    .line 174
    .line 175
    move-object/from16 v19, v11

    .line 176
    .line 177
    move-object v11, v6

    .line 178
    move/from16 v6, v20

    .line 179
    .line 180
    move-object v14, v7

    .line 181
    move-object/from16 v7, v17

    .line 182
    .line 183
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    .line 187
    .line 188
    new-instance v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 189
    .line 190
    invoke-direct {v2, v0, v10, v11, v9}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 191
    .line 192
    .line 193
    new-instance v3, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 194
    .line 195
    invoke-direct {v3, v2, v14}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v8, v3}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v15, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v12, v13, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    move/from16 v1, v16

    .line 209
    .line 210
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 211
    .line 212
    move-object/from16 v8, p1

    .line 213
    .line 214
    move-object/from16 v10, v18

    .line 215
    .line 216
    move-object/from16 v11, v19

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_6
    return-object v12
.end method

.method public static mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlinePresentationSpecs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/widget/inline/InlinePresentationSpec;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    new-instance p1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p3}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, p3, v0}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Landroid/service/autofill/InlinePresentation;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-direct {p1, p3, p0, p2}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    .line 78
    .line 79
    .line 80
    return-object p1
.end method
