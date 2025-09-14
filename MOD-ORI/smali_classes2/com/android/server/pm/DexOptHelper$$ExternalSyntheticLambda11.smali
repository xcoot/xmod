.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DexOptHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/DexOptHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/DexOptHelper;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/art/model/OperationProgress;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 10
    .line 11
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/art/model/OperationProgress;->getPercentage()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->showBootDialog(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
