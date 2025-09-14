.class public final Lcom/android/server/content/ContentService$ObserverCollector$Key;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final flags:I

.field public final observer:Landroid/database/IContentObserver;

.field public final selfChange:Z

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/database/IContentObserver;IZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 6
    iput p2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 8
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 10
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 12
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 9
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 11
    iget-object v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 21
    iget v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 23
    if-ne v0, v2, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 27
    iget-boolean v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 29
    if-ne v0, v2, :cond_1

    .line 31
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 33
    iget v2, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 35
    if-ne v0, v2, :cond_1

    .line 37
    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 39
    iget p1, p1, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 41
    if-ne p0, p1, :cond_1

    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 3
    iget v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p0

    .line 27
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    move-result p0

    .line 35
    return p0
.end method
