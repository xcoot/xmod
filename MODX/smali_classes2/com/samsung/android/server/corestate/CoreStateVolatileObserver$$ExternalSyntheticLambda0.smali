.class public final synthetic Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
