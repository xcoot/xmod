.class public final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAutofillId:Landroid/view/autofill/AutofillId;

.field public mDestroyed:Z

.field public final mHandler:Landroid/os/Handler;

.field public mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

.field public mImeInputStarted:Z

.field public mImeInputViewStarted:Z

.field public mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public mImeRequestConsumer:Ljava/util/function/Consumer;

.field public mImeRequestReceived:Z

.field public mImeSessionInvalidated:Z

.field public mImeShowing:Z

.field public mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field public final mLock:Ljava/lang/Object;

.field public mPreviousHasNonPinSuggestionShow:Z

.field public mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

.field public mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

.field public final mUiCallback:Lcom/android/server/autofill/Session$2;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/Session$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeShowing:Z

    .line 13
    .line 14
    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/Session$2;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final destroySessionLocked()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Never received an InlineSuggestionsRequest from the IME for "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    .line 16
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    .line 17
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleOnReceiveImeStatusUpdated(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeShowing:Z

    .line 5
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    .line 6
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 7
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eq v4, p2, :cond_2

    move v2, v3

    .line 8
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    .line 9
    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    .line 11
    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeUpdateResponseToImeLocked()V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 6
    .line 7
    const-string/jumbo v1, "maybeUpdateResponseToImeLocked called"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 14
    .line 15
    if-nez v0, :cond_1d

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_12

    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1d

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 28
    .line 29
    if-eqz v0, :cond_1d

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    .line 34
    .line 35
    if-eqz v0, :cond_1d

    .line 36
    .line 37
    if-eqz v1, :cond_1d

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/autofill/AutofillId;->getViewId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->getViewId()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v0, v1, :cond_1d

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 62
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v5, :cond_12

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eq v5, v1, :cond_3

    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_3
    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    const-string v6, "InlineFillUi"

    .line 96
    .line 97
    if-nez v5, :cond_5

    .line 98
    .line 99
    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    .line 106
    .line 107
    if-le v5, v7, :cond_5

    .line 108
    .line 109
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "Not showing inline suggestion when user entered more than "

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, " characters"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_4
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 136
    .line 137
    invoke-direct {v0, v4}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_8

    .line 141
    .line 142
    :cond_5
    move v5, v2

    .line 143
    :goto_0
    if-ge v5, v1, :cond_11

    .line 144
    .line 145
    iget-object v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Landroid/service/autofill/Dataset;

    .line 152
    .line 153
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    iget-object v9, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 158
    .line 159
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-gez v8, :cond_6

    .line 164
    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v8, "AutofillId="

    .line 168
    .line 169
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v8, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v8, " not found in dataset"

    .line 178
    .line 179
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto/16 :goto_5

    .line 190
    .line 191
    :cond_6
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    if-nez v9, :cond_7

    .line 196
    .line 197
    const-string v7, "InlinePresentation not found in dataset"

    .line 198
    .line 199
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_7
    invoke-virtual {v9}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-nez v9, :cond_10

    .line 209
    .line 210
    iget-object v9, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_8

    .line 217
    .line 218
    :goto_1
    move v7, v3

    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :cond_8
    iget-object v9, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    if-eqz v10, :cond_c

    .line 236
    .line 237
    iget-object v8, v10, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 238
    .line 239
    if-nez v8, :cond_a

    .line 240
    .line 241
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 242
    .line 243
    if-eqz v8, :cond_9

    .line 244
    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v9, "Explicitly disabling filter for dataset id"

    .line 248
    .line 249
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :cond_9
    :goto_2
    move v7, v2

    .line 267
    goto :goto_4

    .line 268
    :cond_a
    iget-boolean v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    .line 269
    .line 270
    if-eqz v7, :cond_b

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_b
    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    goto :goto_4

    .line 282
    :cond_c
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    check-cast v8, Landroid/view/autofill/AutofillValue;

    .line 291
    .line 292
    if-eqz v8, :cond_f

    .line 293
    .line 294
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    if-nez v10, :cond_d

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_d
    iget-boolean v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    .line 302
    .line 303
    if-eqz v7, :cond_e

    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_e
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    goto :goto_4

    .line 327
    :cond_f
    :goto_3
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    if-nez v7, :cond_9

    .line 332
    .line 333
    goto :goto_1

    .line 334
    :goto_4
    if-nez v7, :cond_10

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_10
    iget-object v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    check-cast v7, Landroid/view/inputmethod/InlineSuggestion;

    .line 344
    .line 345
    invoke-virtual {v0, v5, v7}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :cond_11
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 357
    .line 358
    invoke-direct {v0, v4}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    .line 359
    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_12
    :goto_6
    move v5, v2

    .line 363
    :goto_7
    if-ge v5, v1, :cond_13

    .line 364
    .line 365
    iget-object v6, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    check-cast v6, Landroid/view/inputmethod/InlineSuggestion;

    .line 372
    .line 373
    invoke-virtual {v0, v5, v6}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    add-int/lit8 v5, v5, 0x1

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_13
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 384
    .line 385
    invoke-direct {v0, v4}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    .line 386
    .line 387
    .line 388
    :goto_8
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_14

    .line 397
    .line 398
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 399
    .line 400
    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    .line 401
    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-eqz v4, :cond_14

    .line 407
    .line 408
    return-void

    .line 409
    :cond_14
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    iget-boolean v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 414
    .line 415
    if-eqz v5, :cond_15

    .line 416
    .line 417
    goto/16 :goto_10

    .line 418
    .line 419
    :cond_15
    move v5, v2

    .line 420
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-ge v5, v6, :cond_17

    .line 425
    .line 426
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    check-cast v6, Landroid/view/inputmethod/InlineSuggestion;

    .line 431
    .line 432
    invoke-virtual {v6}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-virtual {v6}, Landroid/view/inputmethod/InlineSuggestionInfo;->isPinned()Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-nez v6, :cond_16

    .line 441
    .line 442
    move v2, v3

    .line 443
    goto :goto_a

    .line 444
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_17
    :goto_a
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 448
    .line 449
    if-eqz v4, :cond_18

    .line 450
    .line 451
    const-string v4, "AutofillInlineSuggestionsRequestSession"

    .line 452
    .line 453
    const-string/jumbo v5, "maybeNotifyFillUiEventLoked(): hasSuggestionToShow="

    .line 454
    .line 455
    .line 456
    const-string v6, ", mPreviousHasNonPinSuggestionShow="

    .line 457
    .line 458
    invoke-static {v5, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    iget-boolean v6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    .line 463
    .line 464
    invoke-static {v4, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 465
    .line 466
    .line 467
    :cond_18
    if-eqz v2, :cond_19

    .line 468
    .line 469
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    .line 470
    .line 471
    if-nez v4, :cond_19

    .line 472
    .line 473
    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/Session$2;

    .line 474
    .line 475
    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 476
    .line 477
    iget-object v4, v4, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    .line 478
    .line 479
    iget-object v6, v4, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 480
    .line 481
    monitor-enter v6

    .line 482
    :try_start_0
    iget-object v7, v4, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 483
    .line 484
    iget v4, v4, Lcom/android/server/autofill/Session;->id:I

    .line 485
    .line 486
    invoke-interface {v7, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .line 488
    .line 489
    goto :goto_b

    .line 490
    :catchall_0
    move-exception p0

    .line 491
    goto :goto_c

    .line 492
    :catch_0
    move-exception v4

    .line 493
    :try_start_1
    const-string v5, "AutofillSession"

    .line 494
    .line 495
    const-string v7, "Error sending fill UI shown notification"

    .line 496
    .line 497
    invoke-static {v5, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .line 499
    .line 500
    :goto_b
    monitor-exit v6

    .line 501
    goto :goto_f

    .line 502
    :goto_c
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    throw p0

    .line 504
    :cond_19
    if-nez v2, :cond_1a

    .line 505
    .line 506
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    .line 507
    .line 508
    if-eqz v4, :cond_1a

    .line 509
    .line 510
    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/Session$2;

    .line 511
    .line 512
    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 513
    .line 514
    iget-object v4, v4, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    .line 515
    .line 516
    iget-object v6, v4, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 517
    .line 518
    monitor-enter v6

    .line 519
    :try_start_2
    iget-object v7, v4, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 520
    .line 521
    iget v4, v4, Lcom/android/server/autofill/Session;->id:I

    .line 522
    .line 523
    invoke-interface {v7, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 524
    .line 525
    .line 526
    goto :goto_d

    .line 527
    :catchall_1
    move-exception p0

    .line 528
    goto :goto_e

    .line 529
    :catch_1
    move-exception v4

    .line 530
    :try_start_3
    const-string v5, "AutofillSession"

    .line 531
    .line 532
    const-string v7, "Error sending fill UI hidden notification"

    .line 533
    .line 534
    invoke-static {v5, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .line 536
    .line 537
    :goto_d
    monitor-exit v6

    .line 538
    goto :goto_f

    .line 539
    :goto_e
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 540
    throw p0

    .line 541
    :cond_1a
    :goto_f
    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    .line 542
    .line 543
    :goto_10
    iget-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 544
    .line 545
    if-eqz v2, :cond_1b

    .line 546
    .line 547
    goto :goto_11

    .line 548
    :cond_1b
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 549
    .line 550
    const-string v4, "AutofillInlineSuggestionsRequestSession"

    .line 551
    .line 552
    if-eqz v2, :cond_1c

    .line 553
    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    const-string v5, "Send inline response: "

    .line 557
    .line 558
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    :cond_1c
    :try_start_4
    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    .line 580
    .line 581
    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 582
    .line 583
    invoke-interface {v2, v5, v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;->onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 584
    .line 585
    .line 586
    goto :goto_11

    .line 587
    :catch_2
    const-string v0, "RemoteException sending InlineSuggestionsResponse to IME"

    .line 588
    .line 589
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    :goto_11
    xor-int/lit8 v0, v1, 0x1

    .line 593
    .line 594
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    .line 599
    .line 600
    :cond_1d
    :goto_12
    return-void
.end method

.method public final onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "onInlineSuggestionsResponseLocked called for:"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "AutofillInlineSuggestionsRequestSession"

    .line 29
    .line 30
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_3
    :goto_0
    return v1
.end method
