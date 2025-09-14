.class public abstract Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final component:Landroid/content/ComponentName;

.field public final connection:Landroid/content/ServiceConnection;

.field public disconnectionCount:I

.field public final service:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final type:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->binder:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final binderDied()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "binderDied : "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "CoverServiceInfo"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 17
    .line 18
    sget-object v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public abstract onCoverAppStateChanged(Z)I
.end method

.method public abstract systemReady()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    .line 12
    .line 13
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "CoverServiceInfo[component=%s, type=%s, service=%s, user=%s]"

    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public abstract updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end method
