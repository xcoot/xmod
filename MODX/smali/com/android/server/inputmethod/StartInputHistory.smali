.class public final Lcom/android/server/inputmethod/StartInputHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEntries:[Lcom/android/server/inputmethod/StartInputHistory$Entry;

.field public mNextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x5

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x20

    .line 14
    :goto_0
    new-array v0, v0, [Lcom/android/server/inputmethod/StartInputHistory$Entry;

    .line 16
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/StartInputHistory$Entry;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    .line 21
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/StartInputHistory$Entry;

    .line 21
    array-length v3, v2

    .line 22
    if-ge v1, v3, :cond_1

    .line 24
    iget v3, p0, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    .line 26
    add-int/2addr v3, v1

    .line 27
    array-length v4, v2

    .line 28
    rem-int/2addr v3, v4

    .line 29
    aget-object v2, v2, v3

    .line 31
    if-nez v2, :cond_0

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_0
    const-string v3, "    "

    .line 37
    const-string v4, "StartInput #"

    .line 39
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v4

    .line 43
    iget v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mSequenceNumber:I

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v5, ":"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    const-string v5, "  time="

    .line 67
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-wide v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mWallTime:J

    .line 72
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v0, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v5, " (timestamp="

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTimestamp:J

    .line 90
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v5, ") reason="

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mStartInputReason:I

    .line 100
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v5, " restarting="

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-boolean v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mRestarting:Z

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    const-string v5, "  imeToken="

    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v5, " ["

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v6, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 146
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v6, "]"

    .line 151
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    const-string v6, " imeUserId="

    .line 165
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget v6, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeUserId:I

    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    .line 182
    const-string v6, " imeDisplayId="

    .line 184
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget v6, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeDisplayId:I

    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    const-string v6, "  targetWin="

    .line 206
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v6, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 219
    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v5, "] targetUserId="

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetUserId:I

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v5, " targetDisplayId="

    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetDisplayId:I

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v5, " clientBindSeq="

    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    const-string v5, "  softInputMode="

    .line 268
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    iget v5, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 273
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 292
    const-string v4, "  inputType=0x"

    .line 294
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v4, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 299
    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 301
    const-string v5, " imeOptions=0x"

    .line 303
    invoke-static {v4, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 306
    iget-object v4, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 308
    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 310
    const-string v5, " fieldId=0x"

    .line 312
    invoke-static {v4, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 315
    iget-object v4, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 317
    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 319
    const-string v5, " fieldName="

    .line 321
    invoke-static {v4, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 324
    iget-object v4, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 326
    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v4, " actionId="

    .line 333
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v4, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 338
    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v4, " actionLabel="

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v2, v2, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 350
    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 352
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 364
    goto/16 :goto_0

    .line 366
    :cond_1
    return-void
.end method
