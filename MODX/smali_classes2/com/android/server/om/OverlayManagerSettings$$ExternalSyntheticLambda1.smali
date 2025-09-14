.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Set;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    new-instance v0, Landroid/util/Pair;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
