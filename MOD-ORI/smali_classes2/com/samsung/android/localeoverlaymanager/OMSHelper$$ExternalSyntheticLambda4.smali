.class public final synthetic Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Landroid/content/om/OverlayInfo;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v1}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v3, 0x2e

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v3, v1

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
