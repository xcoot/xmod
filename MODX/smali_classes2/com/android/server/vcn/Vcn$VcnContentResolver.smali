.class public Lcom/android/server/vcn/Vcn$VcnContentResolver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    .line 11
    .line 12
    return-void
.end method
