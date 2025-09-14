.class public final Lcom/android/server/input/PersistentDataStore$GamePadProfile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mId:I

.field public mName:Ljava/lang/String;

.field public final mSimpeButtonMap:Ljava/util/Map;

.field public final mSimpeStickMap:Ljava/util/Map;

.field public mUsed:Z

.field public final synthetic this$0:Lcom/android/server/input/PersistentDataStore;


# direct methods
.method public constructor <init>(Lcom/android/server/input/PersistentDataStore;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 17
    .line 18
    iput p2, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "Profile_"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 40
    .line 41
    iget p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 47
    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final clearData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v0, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Profile_"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 35
    .line 36
    return-void
.end method
