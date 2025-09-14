.class public Landroid/net/ipmemorystore/Status;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ERROR_DATABASE_CANNOT_BE_OPENED:I = -0x3

.field public static final ERROR_GENERIC:I = -0x1

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_STORAGE:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x5

.field public static final SUCCESS:I


# instance fields
.field public final resultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    return-void
.end method

.method public constructor <init>(Landroid/net/ipmemorystore/StatusParcelable;)V
    .locals 0

    .line 3
    iget p1, p1, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    invoke-direct {p0, p1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/StatusParcelable;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ipmemorystore/StatusParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    .line 7
    .line 8
    iput p0, v0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 9
    .line 10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    .line 2
    .line 3
    const/4 v0, -0x4

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, -0x3

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, -0x2

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "Unknown value ?!"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "SUCCESS"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "GENERIC ERROR"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "ILLEGAL ARGUMENT"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "DATABASE CANNOT BE OPENED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const-string p0, "DATABASE STORAGE ERROR"

    .line 33
    .line 34
    return-object p0
.end method
