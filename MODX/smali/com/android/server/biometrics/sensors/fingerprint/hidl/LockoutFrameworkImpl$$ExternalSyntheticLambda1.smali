.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 11
    const-string/jumbo v2, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 14
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v2, "lockout_reset_user"

    .line 20
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0xc000000

    .line 26
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
