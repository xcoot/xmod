.class public final Lcom/android/server/biometrics/sensors/SemTestHalHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthActionList:Ljava/util/List;

.field public final mBiometricType:I

.field public final mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public mDelayAuthAction:J

.field public final mEnrollActionList:Ljava/util/List;


# direct methods
.method public constructor <init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addFpCaptureFailedAction(IILjava/util/List;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    const/16 v3, 0x2711

    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 17
    .line 18
    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    invoke-direct {v4, v3, p0, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 32
    .line 33
    const/16 v5, 0x2712

    .line 34
    .line 35
    invoke-direct {v4, v1, p0, v2, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 42
    .line 43
    const/16 v5, 0x2713

    .line 44
    .line 45
    invoke-direct {v4, v1, p0, v2, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-direct {v0, v3, p0, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 63
    .line 64
    const/16 v3, 0x2716

    .line 65
    .line 66
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 73
    .line 74
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 81
    .line 82
    const/16 p2, 0x2714

    .line 83
    .line 84
    invoke-direct {p1, v1, p0, v2, p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final addFpDefaultCaptureSuccessAction(Ljava/util/List;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 4
    .line 5
    const/16 v2, 0x2711

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 8
    .line 9
    const/4 v3, 0x6

    .line 10
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 17
    .line 18
    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    invoke-direct {v4, v2, p0, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 32
    .line 33
    const/16 v5, 0x2712

    .line 34
    .line 35
    invoke-direct {v4, v1, p0, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 42
    .line 43
    const/16 v5, 0x2713

    .line 44
    .line 45
    invoke-direct {v4, v1, p0, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-direct {v0, v2, p0, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 63
    .line 64
    const/16 v2, 0x2715

    .line 65
    .line 66
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final initActions()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 25
    .line 26
    const/16 v0, 0x2714

    .line 27
    .line 28
    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x6

    .line 32
    iget-object v6, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 33
    .line 34
    iget v7, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    .line 35
    .line 36
    const/4 v8, 0x2

    .line 37
    if-ne v7, v8, :cond_0

    .line 38
    .line 39
    move v9, v4

    .line 40
    :goto_0
    const/4 v10, 0x5

    .line 41
    if-gt v9, v10, :cond_0

    .line 42
    .line 43
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 44
    .line 45
    invoke-virtual {v1, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 49
    .line 50
    new-instance v11, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 51
    .line 52
    mul-int/lit8 v12, v9, 0x14

    .line 53
    .line 54
    rsub-int/lit8 v12, v12, 0x64

    .line 55
    .line 56
    invoke-direct {v11, v2, v6, v12}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 57
    .line 58
    .line 59
    check-cast v10, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 65
    .line 66
    new-instance v11, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 67
    .line 68
    invoke-direct {v11, v3, v6, v5, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 69
    .line 70
    .line 71
    check-cast v10, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v9, v9, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/16 v9, 0x8

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    const-wide/16 v11, 0x3e8

    .line 83
    .line 84
    if-ne v7, v9, :cond_1

    .line 85
    .line 86
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 87
    .line 88
    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 89
    .line 90
    const/16 v15, 0x46

    .line 91
    .line 92
    invoke-direct {v14, v2, v6, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 93
    .line 94
    .line 95
    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 96
    .line 97
    check-cast v13, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 103
    .line 104
    const/16 v15, 0x32

    .line 105
    .line 106
    invoke-direct {v14, v2, v6, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 107
    .line 108
    .line 109
    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 110
    .line 111
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 115
    .line 116
    const/16 v15, 0x1e

    .line 117
    .line 118
    invoke-direct {v14, v2, v6, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 119
    .line 120
    .line 121
    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 122
    .line 123
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 127
    .line 128
    invoke-direct {v14, v2, v6, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 129
    .line 130
    .line 131
    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 132
    .line 133
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_1
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 137
    .line 138
    check-cast v13, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 141
    .line 142
    .line 143
    sget-object v13, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 144
    .line 145
    if-ne v7, v8, :cond_2

    .line 146
    .line 147
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 148
    .line 149
    invoke-virtual {v1, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 153
    .line 154
    invoke-direct {v15, v13, v6, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 155
    .line 156
    .line 157
    check-cast v14, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 163
    .line 164
    invoke-direct {v15, v3, v6, v5, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {v1, v4, v10, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpCaptureFailedAction(IILjava/util/List;)V

    .line 173
    .line 174
    .line 175
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 176
    .line 177
    const/16 v15, 0x3eb

    .line 178
    .line 179
    invoke-virtual {v1, v5, v15, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpCaptureFailedAction(IILjava/util/List;)V

    .line 180
    .line 181
    .line 182
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 183
    .line 184
    invoke-virtual {v1, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 188
    .line 189
    invoke-direct {v15, v13, v6, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 190
    .line 191
    .line 192
    check-cast v14, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 198
    .line 199
    invoke-direct {v15, v3, v6, v5, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_2
    if-ne v7, v9, :cond_3

    .line 206
    .line 207
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 208
    .line 209
    new-instance v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 210
    .line 211
    invoke-direct {v5, v3, v6, v4, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 212
    .line 213
    .line 214
    iput-wide v11, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 215
    .line 216
    check-cast v0, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 222
    .line 223
    invoke-direct {v5, v13, v6, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 224
    .line 225
    .line 226
    iput-wide v11, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 227
    .line 228
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :cond_3
    if-ne v7, v8, :cond_4

    .line 232
    .line 233
    const-string v0, "/data/.biometric/fingerprint/tpa.json"

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_4
    if-ne v7, v9, :cond_5

    .line 237
    .line 238
    const-string v0, "/data/.biometric/face/tpa.json"

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_5
    const-string v0, ""

    .line 242
    .line 243
    :goto_1
    new-instance v5, Ljava/io/File;

    .line 244
    .line 245
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    const-string v9, "SemTestHalHelper"

    .line 253
    .line 254
    if-nez v7, :cond_6

    .line 255
    .line 256
    const-string/jumbo v5, "getJSONObject: No file, "

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    const/4 v5, 0x0

    .line 267
    goto/16 :goto_8

    .line 268
    .line 269
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    .line 275
    .line 276
    invoke-direct {v12, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 277
    .line 278
    .line 279
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 280
    .line 281
    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    .line 283
    .line 284
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    :goto_2
    if-eqz v0, :cond_7

    .line 289
    .line 290
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    goto :goto_2

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    move-object v1, v0

    .line 300
    move-object v11, v5

    .line 301
    goto/16 :goto_10

    .line 302
    .line 303
    :catch_0
    move-exception v0

    .line 304
    goto :goto_4

    .line 305
    :cond_7
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :catch_1
    move-exception v0

    .line 310
    move-object v5, v0

    .line 311
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 312
    .line 313
    .line 314
    :goto_3
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :catch_2
    move-exception v0

    .line 319
    move-object v5, v0

    .line 320
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    move-object v1, v0

    .line 326
    const/4 v11, 0x0

    .line 327
    goto/16 :goto_10

    .line 328
    .line 329
    :catch_3
    move-exception v0

    .line 330
    const/4 v5, 0x0

    .line 331
    goto :goto_4

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    move-object v1, v0

    .line 334
    const/4 v11, 0x0

    .line 335
    const/4 v12, 0x0

    .line 336
    goto/16 :goto_10

    .line 337
    .line 338
    :catch_4
    move-exception v0

    .line 339
    const/4 v5, 0x0

    .line 340
    const/4 v12, 0x0

    .line 341
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 342
    .line 343
    .line 344
    if-eqz v5, :cond_8

    .line 345
    .line 346
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :catch_5
    move-exception v0

    .line 351
    move-object v5, v0

    .line 352
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 353
    .line 354
    .line 355
    :cond_8
    :goto_5
    if-eqz v12, :cond_9

    .line 356
    .line 357
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 358
    .line 359
    .line 360
    :cond_9
    :goto_6
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :catch_6
    move-exception v0

    .line 371
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    .line 373
    .line 374
    const/4 v0, 0x0

    .line 375
    :goto_7
    move-object v5, v0

    .line 376
    :goto_8
    if-eqz v5, :cond_15

    .line 377
    .line 378
    const-string v7, "actionList"

    .line 379
    .line 380
    const-string/jumbo v12, "delay"

    .line 381
    .line 382
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .line 387
    .line 388
    new-instance v14, Landroid/util/Pair;

    .line 389
    .line 390
    iget-object v15, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 391
    .line 392
    const-string/jumbo v10, "enroll"

    .line 393
    .line 394
    .line 395
    invoke-direct {v14, v10, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    new-instance v10, Landroid/util/Pair;

    .line 402
    .line 403
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    .line 404
    .line 405
    const-string v15, "authenticate"

    .line 406
    .line 407
    invoke-direct {v10, v15, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v10

    .line 417
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_15

    .line 422
    .line 423
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Landroid/util/Pair;

    .line 428
    .line 429
    new-instance v14, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    const-string/jumbo v15, "makeActionFromJSONObject: parse key = "

    .line 432
    .line 433
    .line 434
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object v15, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v15, Ljava/lang/String;

    .line 440
    .line 441
    invoke-static {v14, v15, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :try_start_9
    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v14, Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result v14

    .line 452
    if-nez v14, :cond_a

    .line 453
    .line 454
    const-string/jumbo v0, "makeActionFromJSONObject: No Key, use default"

    .line 455
    .line 456
    .line 457
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    goto :goto_9

    .line 461
    :catch_7
    move-exception v0

    .line 462
    move-object/from16 v16, v5

    .line 463
    .line 464
    :goto_a
    move-object v5, v12

    .line 465
    goto/16 :goto_f

    .line 466
    .line 467
    :cond_a
    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v14, Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 472
    .line 473
    .line 474
    move-result-object v14

    .line 475
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v15

    .line 479
    if-nez v15, :cond_b

    .line 480
    .line 481
    const-string/jumbo v0, "makeActionFromJSONObject: No actionList, use default"

    .line 482
    .line 483
    .line 484
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_b
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v15
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    .line 492
    if-eqz v15, :cond_c

    .line 493
    .line 494
    move-object/from16 v16, v5

    .line 495
    .line 496
    :try_start_a
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 497
    .line 498
    .line 499
    move-result-wide v4

    .line 500
    iput-wide v4, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    .line 501
    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .line 506
    .line 507
    const-string/jumbo v5, "makeActionFromJSONObject: key = "

    .line 508
    .line 509
    .line 510
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v5, Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v5, ", delay = "

    .line 521
    .line 522
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    .line 523
    .line 524
    .line 525
    move-object v5, v12

    .line 526
    :try_start_b
    iget-wide v11, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    .line 527
    .line 528
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    goto :goto_b

    .line 539
    :catch_8
    move-exception v0

    .line 540
    goto/16 :goto_f

    .line 541
    .line 542
    :catch_9
    move-exception v0

    .line 543
    goto :goto_a

    .line 544
    :cond_c
    move-object/from16 v16, v5

    .line 545
    .line 546
    move-object v5, v12

    .line 547
    :goto_b
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 552
    .line 553
    .line 554
    move-result v11

    .line 555
    iget-object v12, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v12, Ljava/util/List;

    .line 558
    .line 559
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 560
    .line 561
    .line 562
    const/4 v12, 0x0

    .line 563
    :goto_c
    if-ge v12, v11, :cond_14

    .line 564
    .line 565
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 566
    .line 567
    .line 568
    move-result-object v14

    .line 569
    const-string/jumbo v15, "type"

    .line 570
    .line 571
    .line 572
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    move-result v15
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 576
    const-string/jumbo v1, "vendorCode"

    .line 577
    .line 578
    .line 579
    move-object/from16 v17, v4

    .line 580
    .line 581
    const/4 v4, 0x1

    .line 582
    if-eq v15, v4, :cond_11

    .line 583
    .line 584
    if-eq v15, v8, :cond_10

    .line 585
    .line 586
    const/4 v4, 0x3

    .line 587
    if-eq v15, v4, :cond_f

    .line 588
    .line 589
    const/4 v4, 0x4

    .line 590
    if-eq v15, v4, :cond_e

    .line 591
    .line 592
    const/4 v1, 0x7

    .line 593
    if-eq v15, v1, :cond_d

    .line 594
    .line 595
    const/4 v1, 0x0

    .line 596
    goto :goto_e

    .line 597
    :cond_d
    :try_start_c
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 598
    .line 599
    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 600
    .line 601
    const-string v15, "TspEvent"

    .line 602
    .line 603
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v15

    .line 607
    invoke-direct {v1, v4, v6, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 608
    .line 609
    .line 610
    goto :goto_e

    .line 611
    :cond_e
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 612
    .line 613
    sget-object v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 614
    .line 615
    const-string/jumbo v8, "errorCode"

    .line 616
    .line 617
    .line 618
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    invoke-direct {v4, v15, v6, v8, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 627
    .line 628
    .line 629
    :goto_d
    move-object v1, v4

    .line 630
    goto :goto_e

    .line 631
    :cond_f
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 632
    .line 633
    const-string v4, "Id"

    .line 634
    .line 635
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    invoke-direct {v1, v13, v6, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 640
    .line 641
    .line 642
    goto :goto_e

    .line 643
    :cond_10
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 644
    .line 645
    const-string/jumbo v4, "remaining"

    .line 646
    .line 647
    .line 648
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    invoke-direct {v1, v2, v6, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    .line 653
    .line 654
    .line 655
    goto :goto_e

    .line 656
    :cond_11
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 657
    .line 658
    const-string v8, "acquiredInfo"

    .line 659
    .line 660
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    move-result v8

    .line 664
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    invoke-direct {v4, v3, v6, v8, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 669
    .line 670
    .line 671
    goto :goto_d

    .line 672
    :goto_e
    if-eqz v1, :cond_13

    .line 673
    .line 674
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    if-eqz v4, :cond_12

    .line 679
    .line 680
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 681
    .line 682
    .line 683
    move-result-wide v14

    .line 684
    iput-wide v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 685
    .line 686
    :cond_12
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v4, Ljava/util/List;

    .line 689
    .line 690
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_8

    .line 691
    .line 692
    .line 693
    :cond_13
    add-int/lit8 v12, v12, 0x1

    .line 694
    .line 695
    move-object/from16 v1, p0

    .line 696
    .line 697
    move-object/from16 v4, v17

    .line 698
    .line 699
    const/4 v8, 0x2

    .line 700
    goto/16 :goto_c

    .line 701
    .line 702
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 703
    .line 704
    .line 705
    :cond_14
    move-object/from16 v1, p0

    .line 706
    .line 707
    move-object v12, v5

    .line 708
    move-object/from16 v5, v16

    .line 709
    .line 710
    const/4 v4, 0x1

    .line 711
    const/4 v8, 0x2

    .line 712
    goto/16 :goto_9

    .line 713
    .line 714
    :cond_15
    return-void

    .line 715
    :goto_10
    if-eqz v11, :cond_16

    .line 716
    .line 717
    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 718
    .line 719
    .line 720
    goto :goto_11

    .line 721
    :catch_a
    move-exception v0

    .line 722
    move-object v2, v0

    .line 723
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 724
    .line 725
    .line 726
    :cond_16
    :goto_11
    if-eqz v12, :cond_17

    .line 727
    .line 728
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 729
    .line 730
    .line 731
    goto :goto_12

    .line 732
    :catch_b
    move-exception v0

    .line 733
    move-object v2, v0

    .line 734
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 735
    .line 736
    .line 737
    :cond_17
    :goto_12
    throw v1
.end method
