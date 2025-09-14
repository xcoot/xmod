.class public abstract Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sDebug:Z

.field public static sFullScreenMode:Ljava/lang/Boolean;

.field public static sVerbose:Z


# direct methods
.method public static addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, p1, p2}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method

.method public static createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 11
    return-object v0

    .line 12
    :cond_1
    array-length v0, v1

    .line 13
    new-instance v2, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 18
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 20
    const-string v4, "AutofillHelper"

    .line 22
    if-eqz v3, :cond_2

    .line 24
    const-string v3, "Service provided "

    .line 26
    const-string v5, " sanitizers"

    .line 28
    invoke-static {v0, v3, v5, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_2
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    .line 34
    move-result-object p0

    .line 35
    const/4 v3, 0x0

    .line 36
    move v5, v3

    .line 37
    :goto_0
    if-ge v5, v0, :cond_5

    .line 39
    aget-object v6, v1, v5

    .line 41
    aget-object v7, p0, v5

    .line 43
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 45
    if-eqz v8, :cond_3

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v9, "sanitizer #"

    .line 52
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v9, " ("

    .line 60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v9, ") for ids "

    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v9

    .line 75
    invoke-static {v8, v9, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    array-length v8, v7

    .line 79
    move v9, v3

    .line 80
    :goto_1
    if-ge v9, v8, :cond_4

    .line 82
    aget-object v10, v7, v9

    .line 84
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v9, v9, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-object v2
.end method

.method public static findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    invoke-virtual {p0, v3}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_2

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/app/assist/AssistStructure$ViewNode;

    .line 40
    iget v1, p1, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 42
    packed-switch v1, :pswitch_data_0

    .line 45
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    iget-object v3, p1, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 51
    check-cast v3, [Ljava/lang/String;

    .line 53
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    goto :goto_1

    .line 58
    :pswitch_0
    iget-object v1, p1, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 60
    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 62
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    :goto_1
    if-eqz v1, :cond_1

    .line 72
    return-object p0

    .line 73
    :cond_1
    move v1, v2

    .line 74
    :goto_2
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    .line 77
    move-result v3

    .line 78
    if-ge v1, v3, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3, v0, p1}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public static newLogMaker(IILjava/lang/String;Z)Landroid/metrics/LogMaker;
    .locals 1

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 p0, 0x38c

    .line 2
    invoke-virtual {v0, p0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 p2, 0x5b0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x586

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    return-object p0
.end method

.method public static newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 2

    .line 5
    new-instance v0, Landroid/content/ComponentName;

    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, p3, p2, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(IILjava/lang/String;Z)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    new-instance v3, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;

    .line 17
    invoke-direct {v3, v1, v2}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 20
    invoke-virtual {p0, v3}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    const-string/jumbo v3, "sanitizeRemoteView() user: "

    .line 32
    const-string v4, " tried accessing resource that does not belong to them"

    .line 34
    const-string v5, "AutofillHelper"

    .line 36
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object p0, v0

    .line 43
    :goto_0
    return-object p0
.end method

.method public static sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 7
    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    const-string v1, "AutofillHelper"

    .line 27
    if-eqz v0, :cond_1

    .line 29
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 31
    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v0, "sanitizeUrlBar(): empty on "

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    .line 60
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 62
    if-eqz p1, :cond_2

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v0, "sanitizeUrlBar(): id="

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v0, ", domain="

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    return-object p0
.end method

.method public static weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo p1, "fail to deref "

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    const-string p1, "AutofillRemoteFieldClassificationService"

    .line 30
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-object v0
.end method
