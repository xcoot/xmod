.class public final Lcom/android/server/inputmethod/SoftInputShowHideHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mEntries:[Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

.field public mNextIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    .line 8
    iput-object v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mNextIndex:I

    .line 13
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
    iget-object v2, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    .line 21
    array-length v3, v2

    .line 22
    if-ge v1, v3, :cond_2

    .line 24
    iget v3, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mNextIndex:I

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
    goto/16 :goto_2

    .line 35
    :cond_0
    const-string v3, "    "

    .line 37
    const-string v4, "SoftInputShowHide #"

    .line 39
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v4

    .line 43
    iget v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mSequenceNumber:I

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
    iget-wide v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mWallTime:J

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
    iget-wide v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mTimestamp:J

    .line 90
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v5, ")"

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v4, "  reason="

    .line 107
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v4

    .line 111
    iget v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mReason:I

    .line 113
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    const-string v5, " inFullscreenMode="

    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-boolean v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    const-string v5, "  requestClient="

    .line 153
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/ClientState;

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    const-string v5, "  focusedWindowName="

    .line 175
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    const-string v5, "  requestWindowName="

    .line 197
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 217
    const-string v5, "  imeControlTargetName="

    .line 219
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    .line 239
    const-string v5, "  imeTargetNameFromWm="

    .line 241
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    const-string v5, "  imeSurfaceParentName="

    .line 263
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeSurfaceParentName:Ljava/lang/String;

    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    const-string v4, "  editorInfo:"

    .line 283
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget-object v4, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 288
    if-eqz v4, :cond_1

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 292
    const-string v5, " inputType="

    .line 294
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 299
    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    const-string v5, " privateImeOptions="

    .line 315
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 320
    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 322
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    const-string v5, " fieldId (viewId)="

    .line 336
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    iget-object v5, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 341
    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 343
    invoke-static {v4, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 346
    goto :goto_1

    .line 347
    :cond_1
    const-string v4, " null"

    .line 349
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :goto_1
    const-string v4, "  focusedWindowSoftInputMode="

    .line 354
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    move-result-object v3

    .line 358
    iget v2, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    .line 360
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 376
    goto/16 :goto_0

    .line 378
    :cond_2
    return-void
.end method
