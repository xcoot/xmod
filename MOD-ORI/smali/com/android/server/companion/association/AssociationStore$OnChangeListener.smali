.class public interface abstract Lcom/android/server/companion/association/AssociationStore$OnChangeListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationRemoved(Landroid/companion/AssociationInfo;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p0, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationAdded(Landroid/companion/AssociationInfo;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 1
    return-void
.end method
