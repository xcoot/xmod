.class public final synthetic Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;Landroid/content/Intent;Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$3:Landroid/content/ComponentName;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 6
    .line 7
    iget-object v8, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$3:Landroid/content/ComponentName;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v5, v1, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v4, 0x1

    .line 26
    move-object v1, v3

    .line 27
    move-object v3, v7

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Failed to bind to: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " for ID="

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v1, "DataLoaderManager"

    .line 57
    .line 58
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p0, v0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method
