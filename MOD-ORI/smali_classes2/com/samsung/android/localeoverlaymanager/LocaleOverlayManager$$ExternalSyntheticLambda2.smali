.class public final synthetic Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/LocaleManager;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/LocaleManager;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/LocaleManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/LocaleManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 6
    .line 7
    check-cast p1, Landroid/content/om/OverlayInfo;

    .line 8
    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    iget-object v3, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    const/16 v3, 0x2e

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "com.android.systemui"

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/Utils;->getLocalesListAsSet(Landroid/os/LocaleList;)Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method
