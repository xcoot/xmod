.class public final Lcom/android/server/pm/ApexSystemServiceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mInitOrder:I

.field public final mJarPath:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    .line 4
    .line 5
    iget v1, p1, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    neg-int p0, p0

    .line 23
    :goto_0
    return p0
.end method
