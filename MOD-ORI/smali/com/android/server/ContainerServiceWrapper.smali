.class public final Lcom/android/server/ContainerServiceWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final info:Lcom/android/server/ContainerServiceInfo;

.field public mBound:Z

.field public final mConnection:Lcom/android/server/ContainerServiceWrapper$1;

.field public mContainerService:Lcom/samsung/android/knox/IContainerService;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/ContainerServiceWrapper$2;

.field public final mService:Lcom/android/server/pm/PersonaServiceProxy;

.field public final name:Landroid/content/ComponentName;

.field public final userid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/ContainerServiceWrapper$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$1;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Lcom/android/server/ContainerServiceWrapper$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/ContainerServiceWrapper$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$2;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Lcom/android/server/ContainerServiceWrapper$2;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    .line 23
    .line 24
    iget p1, p3, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 25
    .line 26
    iput p1, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    .line 27
    .line 28
    iget-object p1, p3, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 2
    .line 3
    const-string v1, "KnoxService::ContainerServiceWrapper"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "service "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " already bound"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v3, Landroid/os/UserHandle;

    .line 52
    .line 53
    iget v4, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    .line 54
    .line 55
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const v4, 0x4000001

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Lcom/android/server/ContainerServiceWrapper$1;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v5, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Can\'t bind to container service "

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 95
    .line 96
    return p0
.end method
