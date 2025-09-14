.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGrammaticalGender:Ljava/lang/Integer;

.field public final mLocales:Landroid/os/LocaleList;

.field public final mNightMode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mNightMode:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mGrammaticalGender:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PackageConfig: nightMode "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mNightMode:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " locales "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
