.class public final synthetic Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Supplier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Supplier;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
