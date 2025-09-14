.class Lcom/android/server/accessibility/BrailleDisplayConnection;
.super Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sConnectedNodes:Ljava/util/Set;


# instance fields
.field public mController:Landroid/accessibilityservice/IBrailleDisplayController;

.field public mHidrawNode:Ljava/io/File;

.field public mInputThread:Ljava/lang/Thread;

.field public final mLock:Ljava/lang/Object;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mOutputThread:Landroid/os/HandlerThread;

.field public mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

.field public final mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;


# direct methods
.method public static bridge synthetic -$$Nest$smnativeGetHidrawBusType(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawBusType(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawDesc(II)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawDesc(II)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawDescSize(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawDescSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawUniq(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawUniq(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance p1, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 19
    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-object p1, p2

    .line 24
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 27
    .line 28
    return-void
.end method

.method public static getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static isBrailleDisplay([B)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-ge v1, v3, :cond_6

    .line 6
    .line 7
    aget-byte v3, p0, v1

    .line 8
    .line 9
    and-int/lit16 v4, v3, 0xf0

    .line 10
    .line 11
    const-string v5, "Item "

    .line 12
    .line 13
    const-string v6, "BrailleDisplayConnection"

    .line 14
    .line 15
    const/16 v7, 0xf0

    .line 16
    .line 17
    if-eq v4, v7, :cond_5

    .line 18
    .line 19
    and-int/lit8 v4, v3, 0x3

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x1

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    if-eq v4, v8, :cond_0

    .line 26
    .line 27
    const/4 v9, 0x2

    .line 28
    if-eq v4, v9, :cond_2

    .line 29
    .line 30
    move v9, v7

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v9, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v9, v0

    .line 35
    :cond_2
    :goto_1
    add-int v4, v1, v9

    .line 36
    .line 37
    array-length v10, p0

    .line 38
    if-lt v4, v10, :cond_3

    .line 39
    .line 40
    const-string p0, " specifies size past the remaining bytes"

    .line 41
    .line 42
    invoke-static {v3, v5, p0, v6}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_3
    if-ne v9, v8, :cond_4

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    aget-byte v1, p0, v1

    .line 51
    .line 52
    and-int/lit16 v3, v3, 0xfc

    .line 53
    .line 54
    int-to-byte v3, v3

    .line 55
    if-ne v3, v7, :cond_4

    .line 56
    .line 57
    const/16 v3, 0x41

    .line 58
    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    move v2, v8

    .line 62
    :cond_4
    add-int/lit8 v1, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    const-string p0, " declares unsupported long type"

    .line 66
    .line 67
    invoke-static {v3, v5, p0, v6}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_6
    return v2
.end method

.method private static native nativeGetHidrawBusType(I)I
.end method

.method private static native nativeGetHidrawDesc(II)[B
.end method

.method private static native nativeGetHidrawDescSize(I)I
.end method

.method private static native nativeGetHidrawName(I)Ljava/lang/String;
.end method

.method private static native nativeGetHidrawUniq(I)Ljava/lang/String;
.end method


# virtual methods
.method public final connectLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    .line 8
    .line 9
    const/4 p4, 0x0

    .line 10
    new-array v0, p4, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "/dev"

    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x1

    .line 30
    const-string v3, "BrailleDisplayConnection"

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string p1, "Unable to access the HIDRAW node directory"

    .line 35
    .line 36
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move v4, p4

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_5

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Ljava/nio/file/Path;

    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 61
    .line 62
    invoke-interface {v6, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceReportDescriptor(Ljava/nio/file/Path;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-nez v6, :cond_2

    .line 67
    .line 68
    move v4, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 71
    .line 72
    invoke-interface {v7, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v7, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 84
    .line 85
    invoke-interface {v7, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getName(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    move v7, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move v7, p4

    .line 104
    :goto_1
    invoke-static {v6}, Lcom/android/server/accessibility/BrailleDisplayConnection;->isBrailleDisplay([B)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_1

    .line 109
    .line 110
    iget-object v8, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 111
    .line 112
    invoke-interface {v8, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceBusType(Ljava/nio/file/Path;)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-ne v8, p3, :cond_1

    .line 117
    .line 118
    if-eqz v7, :cond_1

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/4 p2, 0x2

    .line 137
    if-eq p1, v2, :cond_7

    .line 138
    .line 139
    if-eqz v4, :cond_6

    .line 140
    .line 141
    const-string p1, "Unable to access some HIDRAW node\'s descriptor"

    .line 142
    .line 143
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    const/4 p2, 0x3

    .line 147
    goto :goto_2

    .line 148
    :cond_6
    const-string p1, "Unable to find a unique Braille display matching the provided device"

    .line 149
    .line 150
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/util/Pair;

    .line 162
    .line 163
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Ljava/io/File;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 168
    .line 169
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/util/Pair;

    .line 174
    .line 175
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p1, [B

    .line 178
    .line 179
    sget-object p3, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    .line 180
    .line 181
    iget-object p4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 182
    .line 183
    check-cast p3, Landroid/util/ArraySet;

    .line 184
    .line 185
    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    if-eqz p4, :cond_8

    .line 190
    .line 191
    const-string p1, "Unable to find an unused Braille display matching the provided device"

    .line 192
    .line 193
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 201
    .line 202
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    new-instance p2, Ljava/lang/Thread;

    .line 206
    .line 207
    new-instance p3, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;

    .line 208
    .line 209
    invoke-direct {p3, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;)V

    .line 210
    .line 211
    .line 212
    const-string p4, "BrailleDisplayConnection input thread"

    .line 213
    .line 214
    invoke-direct {p2, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    .line 218
    .line 219
    invoke-virtual {p2, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 225
    .line 226
    .line 227
    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 228
    .line 229
    iput-object p0, p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 230
    .line 231
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    .line 232
    .line 233
    invoke-interface {p2, p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnected(Landroid/accessibilityservice/IBrailleDisplayConnection;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :catch_0
    move-exception p1

    .line 238
    const-string p2, "Error calling onConnected"

    .line 239
    .line 240
    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 244
    .line 245
    .line 246
    :goto_3
    return-void
.end method

.method public final disconnect()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    :try_start_2
    const-string v3, "BrailleDisplayConnection"

    .line 33
    .line 34
    const-string v4, "Unable to close output stream"

    .line 35
    .line 36
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 42
    .line 43
    iput-object v1, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    .line 46
    .line 47
    invoke-interface {v1}, Landroid/accessibilityservice/IBrailleDisplayController;->onDisconnected()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :catch_1
    :try_start_4
    const-string v1, "BrailleDisplayConnection"

    .line 54
    .line 55
    const-string v2, "Error calling onDisconnected"

    .line 56
    .line 57
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_1
    sget-object v1, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 63
    .line 64
    check-cast v1, Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    throw p0
.end method

.method public final sendConnectionErrorLocked(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnectionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "BrailleDisplayConnection"

    .line 9
    .line 10
    const-string v0, "Error calling onConnectionFailed"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setTestData(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/os/Bundle;

    .line 24
    .line 25
    const-string v2, "HIDRAW_PATH"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v3, v3, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 52
    .line 53
    monitor-exit p1

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final write([B)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "BrailleDisplayConnection"

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Requested write of size "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length p1, p1

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " which is larger than maximum "

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    :try_start_2
    new-instance v1, Landroid/os/HandlerThread;

    .line 70
    .line 71
    const-string v2, "BrailleDisplayConnection output thread"

    .line 72
    .line 73
    const/16 v3, 0xa

    .line 74
    .line 75
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 93
    const-string v1, "BrailleDisplayConnection"

    .line 94
    .line 95
    const-string v2, "Unable to create write stream"

    .line 96
    .line 97
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 101
    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;

    .line 112
    .line 113
    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;[B)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string p1, "Accessibility service is not connected"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw p0
.end method
