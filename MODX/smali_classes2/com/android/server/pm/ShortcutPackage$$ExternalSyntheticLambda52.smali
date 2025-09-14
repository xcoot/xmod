.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->f$1:Ljava/util/Collection;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->f$1:Ljava/util/Collection;

    .line 9
    .line 10
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->toGenericDocuments(Ljava/util/Collection;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$2;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$2;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0, v0, v1}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->f$1:Ljava/util/Collection;

    .line 56
    .line 57
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v1, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$2;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$2;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p0, v0, v1}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
