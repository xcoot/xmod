.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final synthetic f$1:[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;->f$1:[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda0;->f$1:[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v0, p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v3, 0x6

    .line 24
    iget-object v2, v2, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    .line 28
    .line 29
    .line 30
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method
