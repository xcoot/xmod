.class public final Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConsumer:Ljava/util/function/Consumer;

.field public final mHandler:Landroid/os/Handler;

.field public final mOthers:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mConsumer:Ljava/util/function/Consumer;

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public final consume(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mHandler:Landroid/os/Handler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;F)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mConsumer:Ljava/util/function/Consumer;

    .line 16
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0

    .line 31
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method
