.class public final Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;
.super Landroid/content/om/ISamsungOverlayCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mObservingPackages:Ljava/util/List;

.field public final synthetic this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/om/ISamsungOverlayCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    .line 12
    .line 13
    move-object p0, p2

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onOverlayStateChanged() called with: packageName = ["

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    sget v1, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->$r8$clinit:I

    .line 6
    .line 7
    const-string v1, "LocaleOverlayManager"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "], enabled = ["

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p3, "] path = "

    .line 26
    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {v1, p3}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    const-string p3, ""

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    const-string p2, "/data/overlays/current_locale_apks/files/"

    .line 54
    .line 55
    const-string p3, ""

    .line 56
    .line 57
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, ".apk"

    .line 62
    .line 63
    const-string p3, ""

    .line 64
    .line 65
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    .line 70
    .line 71
    check-cast p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->mObservingPackages:Ljava/util/List;

    .line 77
    .line 78
    check-cast p1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    const-string p1, "LocaleOverlayManager"

    .line 87
    .line 88
    const-string/jumbo p2, "onOverlayStateChanged(): Trying to call checkSanityAndCompleteTask"

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->checkSanityAndCompleteTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_2
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit p0

    .line 102
    throw p1
.end method
