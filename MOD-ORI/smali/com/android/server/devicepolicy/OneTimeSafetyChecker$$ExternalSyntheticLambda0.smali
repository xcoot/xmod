.class public final synthetic Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/OneTimeSafetyChecker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/OneTimeSafetyChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/OneTimeSafetyChecker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/OneTimeSafetyChecker;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mDone:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Self destructing "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", as it was not automatically disabled"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "OneTimeSafetyChecker"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->disableSelf()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
