.class public final Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final name:Ljava/lang/String;

.field public final weight:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 4
    .line 5
    iget-wide v2, p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    instance-of v2, p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 16
    .line 17
    iget-wide v4, p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 18
    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :cond_2
    if-nez v2, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->weight:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
