.class public final synthetic Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 1
    const-string/jumbo p0, "telephony"

    .line 4
    const-string/jumbo v0, "phone_state_listener_per_pid_registration_limit"

    .line 7
    const/16 v1, 0x32

    .line 9
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
