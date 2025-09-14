.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/chimera/PolicyHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/chimera/PolicyHandler;

    .line 3
    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 5
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 7
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, p1, :cond_0

    .line 19
    move p0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    xor-int/2addr p0, v0

    .line 23
    return p0
.end method
