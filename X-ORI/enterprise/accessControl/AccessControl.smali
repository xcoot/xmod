.class public final Lcom/android/server/enterprise/accessControl/AccessControl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApi:Ljava/lang/String;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mContextUid:I

.field public mIsDangerousApi:Z

.field public mIsDoPoEnforce:Z

.field public mIsOwnerOnly:Z

.field public mIsUserPolicy:Z

.field public mPermissions:Ljava/util/List;

.field public mPid:I

.field public mScope:I

.field public mShouldCheckAdmin:Z

.field public mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 8

    const/4 v5, 0x0

    .line 2
    invoke-static {p2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p3

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(ZZZZZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p6}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>(ZZZZZLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(ZZZZZLjava/util/List;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    .line 5
    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    .line 6
    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    .line 7
    iput-boolean p2, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    .line 10
    iput-boolean p3, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    .line 12
    iput-object p6, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPermissions:Ljava/util/List;

    .line 13
    iput p7, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/android/server/enterprise/accessControl/AccessControl;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/server/enterprise/accessControl/AccessControl;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    .line 5
    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    .line 6
    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    .line 7
    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    .line 8
    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    .line 9
    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    .line 11
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    .line 12
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    .line 13
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    .line 14
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    .line 15
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    .line 16
    iget-object v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPermissions:Ljava/util/List;

    iput-object p0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPermissions:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/accessControl/AccessControl;->clone()Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{ mUid = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " | mPid = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " | mContextUid = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " | mIsOwnerOnly = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " | mIsUserPolicy = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " | mIsDoPoEnforce = "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " | mShouldCheckAdmin = "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " | mIsDangerousApi = "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " | mPermissions = "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPermissions:Ljava/util/List;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " | mScopes = "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget p0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    .line 100
    .line 101
    const-string v1, " }"

    .line 102
    .line 103
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final updateCallerInfo(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 33
    .line 34
    :cond_0
    return-void
.end method
