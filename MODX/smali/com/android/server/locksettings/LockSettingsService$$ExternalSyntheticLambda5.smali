.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaUserHasBeenShutdownBefore(I)Z

    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaUserHasBeenShutdownBefore(I)Z

    .line 24
    move-result p0

    .line 25
    xor-int/lit8 p0, p0, 0x1

    .line 27
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaUserHasBeenShutdownBefore(I)Z

    .line 35
    move-result p0

    .line 36
    xor-int/lit8 p0, p0, 0x1

    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
