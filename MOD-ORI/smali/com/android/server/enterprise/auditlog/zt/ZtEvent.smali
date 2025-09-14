.class public final Lcom/android/server/enterprise/auditlog/zt/ZtEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bundle:Landroid/os/Bundle;

.field public final source:I

.field public final tag:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->source:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->tag:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->bundle:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method
