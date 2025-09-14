.class public final Lcom/android/server/RCPManagerService$1;
.super Landroid/os/ContainerStateReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->scanAndStartBridgeProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string p1, "RCPManagerService"

    .line 11
    .line 12
    const-string p2, "Exception"

    .line 13
    .line 14
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "onRemovePersona"

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p3, " onRemovePersona called for  "

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p3, "RCPManagerService"

    .line 22
    .line 23
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "onResetPersona"

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p3, " onResetPersona called for  "

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p3, "RCPManagerService"

    .line 22
    .line 23
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "onPersonaActive"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p1, " onPersonaActive called for  "

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "RCPManagerService"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method
