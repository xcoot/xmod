.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p0, Lcom/android/server/om/DumpState;

    .line 22
    .line 23
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :pswitch_1
    check-cast p0, Lcom/android/server/om/DumpState;

    .line 39
    .line 40
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p0, p0, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :pswitch_2
    check-cast p0, Lcom/android/server/om/DumpState;

    .line 56
    .line 57
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 58
    .line 59
    iget p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/om/DumpState;->mUserId:I

    .line 62
    .line 63
    if-ne p1, p0, :cond_0

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    :goto_0
    return p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
