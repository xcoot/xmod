.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/UiModeManager$OnProjectionStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProjectionStateChanged(ILjava/util/Set;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAutomotiveProjectionActive:Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->update(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
