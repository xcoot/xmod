.class public final Lcom/android/server/notification/NotificationClassifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

.field public mClassifierSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mInitialized:Z

.field public mOptionsMessage:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

.field public mOptionsNoti:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

.field public pkgList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mInitialized:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifierSupported:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptionsNoti:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptionsMessage:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/notification/NotificationClassifier;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method
