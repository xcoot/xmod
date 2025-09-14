.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 3
    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onKnoxContainerLaunch(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPersonaActive(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRemovePersona(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResetPersona(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, " inside onstatechange "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " new "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " old "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "KnoxMUMContainerPolicy"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 40
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;

    .line 44
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method
