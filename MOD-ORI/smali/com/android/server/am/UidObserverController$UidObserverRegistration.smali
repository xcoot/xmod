.class public final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public final mCanInteractAcrossUsers:Z

.field public final mCutpoint:I

.field public final mLastProcStates:Landroid/util/SparseIntArray;

.field public mMaxDispatchTime:I

.field public final mPkg:Ljava/lang/String;

.field public mSlowDispatchCount:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public mUids:[I

.field public final mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
        0x40
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    if-eqz p6, :cond_0

    .line 16
    .line 17
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, [I

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 24
    .line 25
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 30
    .line 31
    :goto_0
    iput-object p7, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 32
    .line 33
    if-ltz p4, :cond_1

    .line 34
    .line 35
    new-instance p1, Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .locals 2

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, " "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p2, ":"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 41
    .line 42
    and-int/lit8 v0, p2, 0x4

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string v0, " IDLE"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    and-int/lit8 v0, p2, 0x8

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string v0, " ACT"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    and-int/lit8 v0, p2, 0x2

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const-string v0, " GONE"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    and-int/lit8 v0, p2, 0x20

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    const-string v0, " CAP"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    and-int/lit8 p2, p2, 0x1

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    const-string p2, " STATE"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p2, " (cut="

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    .line 96
    .line 97
    const-string p2, ")"

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 106
    .line 107
    if-eqz p2, :cond_5

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_0
    if-ge v0, p2, :cond_5

    .line 115
    .line 116
    const-string v1, "      Last "

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 128
    .line 129
    .line 130
    const-string v1, ": "

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 12

    .line 1
    const-wide v0, 0x20b00000017L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x10500000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iget v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 18
    .line 19
    .line 20
    const-wide v4, 0x10900000002L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-object v6, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 31
    .line 32
    int-to-long v8, v4

    .line 33
    sget-object v10, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 34
    .line 35
    sget-object v11, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    .line 36
    .line 37
    const-wide v6, 0x20e00000003L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    move-object v5, p1

    .line 43
    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 44
    .line 45
    .line 46
    const-wide v4, 0x10500000004L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iget v6, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 52
    .line 53
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/4 v5, 0x0

    .line 65
    :goto_0
    if-ge v5, v4, :cond_0

    .line 66
    .line 67
    const-wide v6, 0x20b00000005L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 77
    .line 78
    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    invoke-virtual {p1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 83
    .line 84
    .line 85
    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 86
    .line 87
    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    const-wide v9, 0x10500000002L

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
