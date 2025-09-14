.class public final synthetic Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JII)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/MovePackageHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$4:J

    .line 12
    .line 13
    iput p8, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$5:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/MovePackageHelper;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    iget-wide v3, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$2:J

    .line 13
    .line 14
    iget-object v5, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    .line 15
    .line 16
    iget-wide v6, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$4:J

    .line 17
    .line 18
    iget v8, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$5:I

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v9, Ljava/security/SecureRandom;

    .line 24
    .line 25
    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    move v0, v10

    .line 30
    :goto_0
    :try_start_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    const-wide/16 v12, 0x1

    .line 33
    .line 34
    invoke-virtual {v2, v12, v13, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 35
    .line 36
    .line 37
    move-result v11
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz v11, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    .line 42
    .line 43
    .line 44
    move-result-wide v11

    .line 45
    sub-long v11, v3, v11

    .line 46
    .line 47
    const-wide/16 v13, 0x0

    .line 48
    .line 49
    cmp-long v13, v6, v13

    .line 50
    .line 51
    const/16 v14, 0xa

    .line 52
    .line 53
    if-eqz v13, :cond_1

    .line 54
    .line 55
    const-wide/16 v15, 0x50

    .line 56
    .line 57
    mul-long/2addr v11, v15

    .line 58
    div-long v15, v11, v6

    .line 59
    .line 60
    const-wide/16 v17, 0x0

    .line 61
    .line 62
    const-wide/16 v19, 0x50

    .line 63
    .line 64
    invoke-static/range {v15 .. v20}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    long-to-int v11, v11

    .line 69
    add-int/2addr v11, v14

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/16 v11, 0x64

    .line 72
    .line 73
    :goto_1
    if-lt v0, v11, :cond_3

    .line 74
    .line 75
    const/16 v11, 0x5a

    .line 76
    .line 77
    if-ge v0, v11, :cond_2

    .line 78
    .line 79
    invoke-virtual {v9, v14}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v11, v10

    .line 85
    :goto_2
    add-int/2addr v0, v11

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    move v0, v11

    .line 88
    :goto_3
    iget-object v11, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 89
    .line 90
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 91
    .line 92
    invoke-virtual {v11, v8, v0}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/MovePackageHelper;

    .line 97
    .line 98
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 99
    .line 100
    iget-wide v3, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$2:J

    .line 101
    .line 102
    iget-object v5, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    .line 103
    .line 104
    iget-wide v6, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$4:J

    .line 105
    .line 106
    iget v0, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$5:I

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v8, Ljava/security/SecureRandom;

    .line 112
    .line 113
    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 114
    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    move v10, v9

    .line 118
    :goto_4
    :try_start_1
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    .line 120
    const-wide/16 v12, 0x1

    .line 121
    .line 122
    invoke-virtual {v2, v12, v13, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 123
    .line 124
    .line 125
    move-result v11
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    if-eqz v11, :cond_4

    .line 127
    .line 128
    return-void

    .line 129
    :catch_1
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    sub-long v11, v3, v11

    .line 134
    .line 135
    const-wide/16 v13, 0x50

    .line 136
    .line 137
    mul-long/2addr v11, v13

    .line 138
    div-long v13, v11, v6

    .line 139
    .line 140
    const-wide/16 v15, 0x0

    .line 141
    .line 142
    const-wide/16 v17, 0x50

    .line 143
    .line 144
    invoke-static/range {v13 .. v18}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide v11

    .line 148
    long-to-int v11, v11

    .line 149
    add-int/lit8 v11, v11, 0xa

    .line 150
    .line 151
    if-lt v10, v11, :cond_6

    .line 152
    .line 153
    const/16 v11, 0x5a

    .line 154
    .line 155
    if-ge v10, v11, :cond_5

    .line 156
    .line 157
    const/4 v11, 0x5

    .line 158
    invoke-virtual {v8, v11}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    goto :goto_5

    .line 163
    :cond_5
    move v11, v9

    .line 164
    :goto_5
    add-int/2addr v10, v11

    .line 165
    goto :goto_6

    .line 166
    :cond_6
    move v10, v11

    .line 167
    :goto_6
    iget-object v11, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 168
    .line 169
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 170
    .line 171
    invoke-virtual {v11, v0, v10}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
