.class public final Lcom/android/server/am/OomAdjusterModernImpl;
.super Lcom/android/server/am/OomAdjuster;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ADJ_SLOT_VALUES:[I


# instance fields
.field public final mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

.field public final mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

.field public final mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

.field public final mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field public final mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field public final mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

.field public final mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x32
        0x64
        0xc8
        0xe1
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e9
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-object p2, p1, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    .line 27
    .line 28
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    const/16 p3, 0x15

    .line 39
    .line 40
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 44
    .line 45
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    const/16 p3, 0x12

    .line 49
    .line 50
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 54
    .line 55
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 61
    .line 62
    return-void
.end method

.method public static forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    const/16 v2, -0x384

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-ltz v1, :cond_5

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iget-object v5, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 33
    .line 34
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v5, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 40
    .line 41
    :goto_1
    if-eqz v5, :cond_4

    .line 42
    .line 43
    if-eq v5, p0, :cond_4

    .line 44
    .line 45
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 46
    .line 47
    iget v8, v7, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 48
    .line 49
    if-lt v8, v2, :cond_1

    .line 50
    .line 51
    if-ltz v8, :cond_4

    .line 52
    .line 53
    :cond_1
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 54
    .line 55
    if-gtz v2, :cond_2

    .line 56
    .line 57
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 58
    .line 59
    if-lez v2, :cond_2

    .line 60
    .line 61
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 62
    .line 63
    if-le v2, v3, :cond_4

    .line 64
    .line 65
    :cond_2
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget-object v2, v6, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    const/4 v1, 0x0

    .line 90
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    :goto_4
    if-ltz v1, :cond_b

    .line 93
    .line 94
    iget-object v4, v0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    .line 95
    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    const/4 v4, 0x0

    .line 106
    :goto_5
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 107
    .line 108
    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 109
    .line 110
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 111
    .line 112
    if-eqz v5, :cond_a

    .line 113
    .line 114
    if-eq v5, p0, :cond_a

    .line 115
    .line 116
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 117
    .line 118
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 119
    .line 120
    if-lt v7, v2, :cond_8

    .line 121
    .line 122
    if-ltz v7, :cond_a

    .line 123
    .line 124
    :cond_8
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 125
    .line 126
    if-gtz v7, :cond_9

    .line 127
    .line 128
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 129
    .line 130
    if-lez v7, :cond_9

    .line 131
    .line 132
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 133
    .line 134
    if-gt v6, v3, :cond_9

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_9
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_a
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 144
    .line 145
    iget-object v1, v0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    add-int/lit8 v1, v1, -0x1

    .line 152
    .line 153
    :goto_7
    if-ltz v1, :cond_f

    .line 154
    .line 155
    iget-object v4, v0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    .line 162
    .line 163
    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 164
    .line 165
    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 166
    .line 167
    if-eqz v5, :cond_e

    .line 168
    .line 169
    if-eq v5, p0, :cond_e

    .line 170
    .line 171
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 172
    .line 173
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 174
    .line 175
    if-lt v7, v2, :cond_c

    .line 176
    .line 177
    if-ltz v7, :cond_e

    .line 178
    .line 179
    :cond_c
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 180
    .line 181
    if-gtz v7, :cond_d

    .line 182
    .line 183
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 184
    .line 185
    if-lez v7, :cond_d

    .line 186
    .line 187
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 188
    .line 189
    if-gt v6, v3, :cond_d

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_d
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_e
    :goto_8
    add-int/lit8 v1, v1, -0x1

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_f
    return-void
.end method


# virtual methods
.method public final computeConnectionsLSP()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iput-object v1, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iput-object v0, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method

.method public final getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    const/16 p0, 0x3e9

    .line 2
    .line 3
    return p0
.end method

.method public final getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final partialUpdateLSP(ILandroid/util/ArraySet;)V
    .locals 29

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v11, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v12

    .line 18
    iget-object v1, v11, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v14

    .line 27
    iget-object v1, v11, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 28
    .line 29
    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    .line 30
    .line 31
    sub-long v16, v12, v1

    .line 32
    .line 33
    iget-object v10, v11, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 34
    .line 35
    iget-object v1, v10, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 41
    .line 42
    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 43
    .line 44
    iput-wide v12, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 45
    .line 46
    const/16 v9, 0x3e9

    .line 47
    .line 48
    iput v9, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mCachedAdj:I

    .line 49
    .line 50
    move/from16 v8, p1

    .line 51
    .line 52
    iput v8, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 53
    .line 54
    iput-object v10, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    iput-boolean v7, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    .line 58
    .line 59
    iget v0, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    add-int/2addr v0, v5

    .line 63
    iput v0, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 64
    .line 65
    iget-object v6, v11, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    move v1, v7

    .line 75
    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    .line 77
    move-object/from16 v2, p2

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 84
    .line 85
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 88
    .line 89
    .line 90
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 91
    .line 92
    iput-boolean v5, v4, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 93
    .line 94
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move-object/from16 v2, p2

    .line 101
    .line 102
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    .line 103
    .line 104
    iput-object v6, v0, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    .line 105
    .line 106
    move v1, v7

    .line 107
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-ge v1, v3, :cond_1

    .line 112
    .line 113
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 118
    .line 119
    invoke-static {v3, v0}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    .line 137
    .line 138
    .line 139
    iget-object v4, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 140
    .line 141
    invoke-static {}, Lcom/android/server/am/Flags;->skipUnimportantConnections()Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    move v2, v7

    .line 149
    :goto_2
    if-ge v2, v3, :cond_a

    .line 150
    .line 151
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    move-object v1, v0

    .line 156
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 157
    .line 158
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 159
    .line 160
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 161
    .line 162
    iput-object v1, v4, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 163
    .line 164
    iget-object v0, v4, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 165
    .line 166
    move-object/from16 v19, v6

    .line 167
    .line 168
    iget-wide v5, v4, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 169
    .line 170
    iget v9, v4, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 171
    .line 172
    const/16 v21, 0x0

    .line 173
    .line 174
    const/16 v22, 0x0

    .line 175
    .line 176
    const/16 v23, 0x3e9

    .line 177
    .line 178
    const/16 v24, 0x0

    .line 179
    .line 180
    const/16 v25, 0x0

    .line 181
    .line 182
    move-object/from16 v26, v0

    .line 183
    .line 184
    move-object/from16 v0, p0

    .line 185
    .line 186
    move-object/from16 p2, v1

    .line 187
    .line 188
    move/from16 v27, v2

    .line 189
    .line 190
    move/from16 v2, v23

    .line 191
    .line 192
    move/from16 v23, v3

    .line 193
    .line 194
    move-object/from16 v3, v26

    .line 195
    .line 196
    move-object/from16 v28, v4

    .line 197
    .line 198
    move/from16 v4, v24

    .line 199
    .line 200
    const/16 v18, 0x1

    .line 201
    .line 202
    move/from16 v7, v25

    .line 203
    .line 204
    move/from16 v8, v21

    .line 205
    .line 206
    move-wide/from16 v20, v14

    .line 207
    .line 208
    move-object v14, v10

    .line 209
    move/from16 v10, v22

    .line 210
    .line 211
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 212
    .line 213
    .line 214
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    .line 215
    .line 216
    move-object/from16 v1, v28

    .line 217
    .line 218
    iput-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    iput-boolean v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    .line 222
    .line 223
    move-object/from16 v3, p2

    .line 224
    .line 225
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 226
    .line 227
    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 228
    .line 229
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    add-int/lit8 v5, v5, -0x1

    .line 234
    .line 235
    :goto_3
    if-ltz v5, :cond_7

    .line 236
    .line 237
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 242
    .line 243
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    add-int/lit8 v7, v7, -0x1

    .line 248
    .line 249
    :goto_4
    if-ltz v7, :cond_6

    .line 250
    .line 251
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    check-cast v8, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    add-int/lit8 v9, v9, -0x1

    .line 262
    .line 263
    :goto_5
    if-ltz v9, :cond_5

    .line 264
    .line 265
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 270
    .line 271
    iget-boolean v15, v3, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 272
    .line 273
    if-eqz v15, :cond_2

    .line 274
    .line 275
    iget-object v15, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 276
    .line 277
    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .line 278
    .line 279
    if-eqz v15, :cond_2

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_2
    iget-object v15, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 283
    .line 284
    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 285
    .line 286
    :goto_6
    if-eqz v15, :cond_4

    .line 287
    .line 288
    if-ne v15, v3, :cond_3

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_3
    invoke-virtual {v0, v10, v15}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_4
    :goto_7
    add-int/lit8 v9, v9, -0x1

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 304
    .line 305
    iget-object v5, v4, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 306
    .line 307
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    add-int/lit8 v5, v5, -0x1

    .line 312
    .line 313
    :goto_8
    if-ltz v5, :cond_9

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    iget-object v7, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    add-int/lit8 v7, v7, -0x1

    .line 326
    .line 327
    :goto_9
    if-ltz v7, :cond_8

    .line 328
    .line 329
    iget-object v8, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    .line 336
    .line 337
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 338
    .line 339
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    add-int/lit8 v7, v7, -0x1

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_9
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 349
    .line 350
    .line 351
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 352
    .line 353
    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 354
    .line 355
    .line 356
    add-int/lit8 v0, v27, 0x1

    .line 357
    .line 358
    move/from16 v8, p1

    .line 359
    .line 360
    move-object v4, v1

    .line 361
    move v7, v2

    .line 362
    move-object v10, v14

    .line 363
    move/from16 v5, v18

    .line 364
    .line 365
    move-object/from16 v6, v19

    .line 366
    .line 367
    move-wide/from16 v14, v20

    .line 368
    .line 369
    move/from16 v3, v23

    .line 370
    .line 371
    const/16 v9, 0x3e9

    .line 372
    .line 373
    move v2, v0

    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :cond_a
    move/from16 v18, v5

    .line 377
    .line 378
    move-object/from16 v19, v6

    .line 379
    .line 380
    move v2, v7

    .line 381
    move-wide/from16 v20, v14

    .line 382
    .line 383
    move-object v14, v10

    .line 384
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    move v1, v2

    .line 403
    move v7, v1

    .line 404
    :goto_a
    if-ge v7, v0, :cond_c

    .line 405
    .line 406
    move-object/from16 v3, v19

    .line 407
    .line 408
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 413
    .line 414
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 415
    .line 416
    iput-boolean v2, v4, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 417
    .line 418
    iget v5, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 419
    .line 420
    iput v5, v4, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 421
    .line 422
    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 423
    .line 424
    const/16 v5, 0x3e9

    .line 425
    .line 426
    if-lt v4, v5, :cond_b

    .line 427
    .line 428
    move/from16 v1, v18

    .line 429
    .line 430
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 431
    .line 432
    move-object/from16 v19, v3

    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_c
    if-eqz v1, :cond_d

    .line 436
    .line 437
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 438
    .line 439
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v11, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 442
    .line 443
    .line 444
    :cond_d
    iget-object v0, v14, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    move v7, v2

    .line 451
    :goto_b
    if-ge v7, v0, :cond_11

    .line 452
    .line 453
    invoke-virtual {v14, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    const/16 v3, 0x13

    .line 458
    .line 459
    iput v3, v1, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 460
    .line 461
    iput-boolean v2, v1, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 462
    .line 463
    iput v2, v1, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 464
    .line 465
    iget-object v3, v1, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 466
    .line 467
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    add-int/lit8 v3, v3, -0x1

    .line 472
    .line 473
    :goto_c
    if-ltz v3, :cond_10

    .line 474
    .line 475
    iget-object v4, v1, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 476
    .line 477
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 482
    .line 483
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 484
    .line 485
    if-nez v5, :cond_f

    .line 486
    .line 487
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 488
    .line 489
    if-eqz v5, :cond_f

    .line 490
    .line 491
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 492
    .line 493
    if-eqz v5, :cond_e

    .line 494
    .line 495
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 496
    .line 497
    iget-object v5, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 498
    .line 499
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-gtz v5, :cond_e

    .line 504
    .line 505
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 506
    .line 507
    if-nez v5, :cond_e

    .line 508
    .line 509
    goto :goto_d

    .line 510
    :cond_e
    invoke-static {v4}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 511
    .line 512
    .line 513
    :cond_f
    :goto_d
    add-int/lit8 v3, v3, -0x1

    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_11
    const/4 v9, 0x0

    .line 520
    move-object/from16 v0, p0

    .line 521
    .line 522
    move/from16 v1, p1

    .line 523
    .line 524
    move-object v2, v14

    .line 525
    move-wide v3, v12

    .line 526
    move-wide/from16 v5, v20

    .line 527
    .line 528
    move-wide/from16 v7, v16

    .line 529
    .line 530
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    .line 531
    .line 532
    .line 533
    return-void
.end method

.method public final performUpdateOomAdjLSP(I)V
    .locals 27

    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 1
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    .line 2
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    iput v0, v11, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 3
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput v12, v11, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 8
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 10
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 12
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v18, v9, v0

    .line 13
    iget v0, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v7, 0x0

    .line 14
    iput v7, v11, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 15
    iput v7, v11, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 16
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 17
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 18
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 19
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v6, v0

    :goto_0
    if-ltz v6, :cond_1

    .line 21
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 22
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 23
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 24
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 25
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    .line 26
    iput v1, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 27
    iput-boolean v7, v0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 28
    iput v7, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    :cond_0
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v2, 0x3e9

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v15

    move-object v13, v4

    move/from16 v4, v22

    move-object v14, v5

    move/from16 v22, v6

    move-wide v5, v9

    move/from16 v24, v7

    move/from16 v7, v23

    move/from16 v8, v20

    move-wide/from16 v25, v9

    move/from16 v9, p1

    move/from16 v10, v21

    .line 29
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 30
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 31
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, v13}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v6, v22, -0x1

    move-object v5, v14

    move/from16 v7, v24

    move-wide/from16 v9, v25

    const/4 v8, 0x1

    const-wide/16 v13, 0x40

    goto :goto_0

    :cond_1
    move-wide/from16 v25, v9

    .line 32
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 34
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 35
    iget-object v0, v11, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 36
    iput-object v15, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    move-wide/from16 v3, v25

    .line 37
    iput-wide v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    const/16 v1, 0x3e9

    .line 38
    iput v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mCachedAdj:I

    .line 39
    iput v12, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    .line 43
    iget-object v0, v11, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 44
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v11, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 46
    iget-object v2, v11, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    const-wide/16 v0, 0x40

    .line 47
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->performUpdateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public final performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x40

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 21
    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OomAdjusterModernImpl;->partialUpdateLSP(ILandroid/util/ArraySet;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public resetInternal()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
