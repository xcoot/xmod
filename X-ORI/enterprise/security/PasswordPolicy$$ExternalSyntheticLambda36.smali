.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;->f$0:Landroid/os/Bundle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;->f$0:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string/jumbo v0, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "knox.container.proxy.COMMAND_ENFORCE_PASSWORD"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    return-void
.end method
