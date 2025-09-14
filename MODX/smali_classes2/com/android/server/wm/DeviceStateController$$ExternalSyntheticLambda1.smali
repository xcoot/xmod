.class public final synthetic Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;

.field public final synthetic f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/function/Consumer;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
