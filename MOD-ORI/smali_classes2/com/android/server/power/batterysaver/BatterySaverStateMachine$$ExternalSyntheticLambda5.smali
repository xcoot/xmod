.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/app/NotificationManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/NotificationManager;

    .line 14
    .line 15
    const-string v1, "BatterySaverStateMachine"

    .line 16
    .line 17
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
