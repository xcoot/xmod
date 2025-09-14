.class public final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field public static final MODE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public mCurrentOverlaySetting:Ljava/lang/String;

.field public final mOverlays:Ljava/util/ArrayList;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "([^,]+)(,[,_a-z]+)*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 7

    .line 1
    const-string v5, "OverlayDisplayAdapter"

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 19
    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "mCurrentOverlaySetting="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 11
    const-string/jumbo v2, "mOverlays: size="

    .line 14
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "  "

    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ":"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "    mModes="

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 85
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "    mActiveMode="

    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 112
    const-string v3, "    mGravity="

    .line 114
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v1

    .line 118
    iget v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 120
    const-string v3, "    mFlags="

    .line 122
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object v1

    .line 126
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "    mNumber="

    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    .line 147
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 150
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 152
    if-eqz v1, :cond_0

    .line 154
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    .line 156
    const-string v1, "    "

    .line 158
    invoke-direct {v4, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 164
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 166
    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 168
    iget-object v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 170
    const-string v5, ""

    .line 172
    const-wide/16 v6, 0xc8

    .line 174
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 177
    goto/16 :goto_0

    .line 179
    :cond_1
    return-void
.end method

.method public final updateOverlayDisplayDevicesLocked()V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 3
    iget-object v0, v7, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "overlay_display_devices"

    .line 12
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const-string v0, ""

    .line 20
    :cond_0
    move-object v8, v0

    .line 21
    iget-object v0, v7, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 23
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    return-void

    .line 30
    :cond_1
    iput-object v8, v7, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 32
    iget-object v0, v7, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result v0

    .line 38
    const-string v9, "OverlayDisplayAdapter"

    .line 40
    if-nez v0, :cond_3

    .line 42
    const-string v0, "Dismissing all overlay display devices."

    .line 44
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, v7, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 65
    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 67
    iget-object v3, v2, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 69
    iget-object v4, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 71
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 76
    iget-object v2, v2, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 78
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, v7, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    :cond_3
    const-string v0, ";"

    .line 89
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 92
    move-result-object v10

    .line 93
    array-length v11, v10

    .line 94
    const/4 v0, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    :goto_1
    if-ge v13, v11, :cond_11

    .line 98
    aget-object v1, v10, v13

    .line 100
    sget-object v2, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 102
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_10

    .line 112
    const/4 v2, 0x4

    .line 113
    if-lt v0, v2, :cond_4

    .line 115
    const-string v0, "Too many overlay display devices specified: "

    .line 117
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto/16 :goto_a

    .line 126
    :cond_4
    const/4 v2, 0x1

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 130
    move-result-object v3

    .line 131
    const/4 v4, 0x2

    .line 132
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    const-string v6, "\\|"

    .line 143
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    array-length v6, v3

    .line 148
    const/4 v14, 0x0

    .line 149
    :goto_2
    if-ge v14, v6, :cond_7

    .line 151
    aget-object v12, v3, v14

    .line 153
    sget-object v15, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    .line 155
    invoke-virtual {v15, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 158
    move-result-object v15

    .line 159
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    .line 162
    move-result v17

    .line 163
    if-eqz v17, :cond_6

    .line 165
    :try_start_0
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    const/16 v2, 0xa

    .line 171
    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 174
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    move-object/from16 v19, v3

    .line 177
    const/4 v2, 0x2

    .line 178
    :try_start_1
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 182
    const/16 v2, 0xa

    .line 184
    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 187
    move-result v3

    .line 188
    const/4 v2, 0x3

    .line 189
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 192
    move-result-object v2

    .line 193
    const/16 v15, 0xa

    .line 195
    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 198
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    const/16 v15, 0x64

    .line 201
    move/from16 v18, v6

    .line 203
    if-lt v4, v15, :cond_5

    .line 205
    const/16 v6, 0x1000

    .line 207
    if-gt v4, v6, :cond_5

    .line 209
    if-lt v3, v15, :cond_5

    .line 211
    if-gt v3, v6, :cond_5

    .line 213
    const/16 v6, 0x78

    .line 215
    if-lt v2, v6, :cond_5

    .line 217
    const/16 v6, 0x280

    .line 219
    if-gt v2, v6, :cond_5

    .line 221
    :try_start_2
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 223
    invoke-direct {v6, v4, v3, v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    .line 226
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    goto :goto_4

    .line 230
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    const-string v3, "Ignoring out-of-range overlay display mode: "

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    goto :goto_4

    .line 251
    :catch_0
    :goto_3
    move/from16 v18, v6

    .line 253
    goto :goto_4

    .line 254
    :catch_1
    move-object/from16 v19, v3

    .line 256
    goto :goto_3

    .line 257
    :cond_6
    move-object/from16 v19, v3

    .line 259
    move/from16 v18, v6

    .line 261
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    :catch_2
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 266
    move/from16 v6, v18

    .line 268
    move-object/from16 v3, v19

    .line 270
    const/4 v2, 0x1

    .line 271
    const/4 v4, 0x2

    .line 272
    goto :goto_2

    .line 273
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_10

    .line 279
    add-int/lit8 v12, v0, 0x1

    .line 281
    iget-object v0, v7, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    move-result-object v0

    .line 287
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    move-result-object v2

    .line 291
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 294
    move-result-object v2

    .line 295
    const v3, 0x1040488

    .line 298
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    move-result-object v2

    .line 302
    const/4 v0, 0x1

    .line 303
    if-eq v12, v0, :cond_a

    .line 305
    const/4 v3, 0x2

    .line 306
    if-eq v12, v3, :cond_9

    .line 308
    const/4 v3, 0x3

    .line 309
    if-eq v12, v3, :cond_8

    .line 311
    const/16 v3, 0x53

    .line 313
    :goto_5
    move v4, v3

    .line 314
    goto :goto_6

    .line 315
    :cond_8
    const/16 v3, 0x35

    .line 317
    goto :goto_5

    .line 318
    :cond_9
    const/16 v3, 0x55

    .line 320
    goto :goto_5

    .line 321
    :cond_a
    const/16 v3, 0x33

    .line 323
    goto :goto_5

    .line 324
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    move-result v3

    .line 328
    if-eqz v3, :cond_b

    .line 330
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 332
    const/4 v14, 0x0

    .line 333
    invoke-direct {v0, v14, v14, v14}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    .line 336
    move-object v6, v0

    .line 337
    goto :goto_8

    .line 338
    :cond_b
    const/4 v14, 0x0

    .line 339
    const-string v3, ","

    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 344
    move-result-object v1

    .line 345
    array-length v3, v1

    .line 346
    move v0, v14

    .line 347
    move v6, v0

    .line 348
    move v15, v6

    .line 349
    :goto_7
    if-ge v6, v3, :cond_f

    .line 351
    move/from16 v16, v3

    .line 353
    aget-object v3, v1, v6

    .line 355
    move-object/from16 v17, v1

    .line 357
    const-string/jumbo v1, "secure"

    .line 360
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_c

    .line 366
    const/4 v15, 0x1

    .line 367
    :cond_c
    const-string/jumbo v1, "own_content_only"

    .line 370
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_d

    .line 376
    const/4 v0, 0x1

    .line 377
    :cond_d
    const-string/jumbo v1, "should_show_system_decorations"

    .line 380
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_e

    .line 386
    const/4 v14, 0x1

    .line 387
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 389
    move/from16 v3, v16

    .line 391
    move-object/from16 v1, v17

    .line 393
    goto :goto_7

    .line 394
    :cond_f
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 396
    invoke-direct {v1, v15, v0, v14}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    .line 399
    move-object v6, v1

    .line 400
    :goto_8
    const-string v0, "Showing overlay display device #"

    .line 402
    const-string v1, ": name="

    .line 404
    const-string v3, ", modes="

    .line 406
    invoke-static {v12, v0, v1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 413
    move-result-object v1

    .line 414
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, ", flags="

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v0

    .line 433
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v14, v7, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 438
    new-instance v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 440
    move-object v0, v15

    .line 441
    move-object/from16 v1, p0

    .line 443
    move-object v3, v5

    .line 444
    move-object v5, v6

    .line 445
    move v6, v12

    .line 446
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;I)V

    .line 449
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    move v0, v12

    .line 453
    goto :goto_9

    .line 454
    :cond_10
    const-string v1, "Malformed overlay display devices setting: "

    .line 456
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    move-result-object v1

    .line 460
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 465
    goto/16 :goto_1

    .line 467
    :cond_11
    :goto_a
    return-void
.end method
