.class public final Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    .line 6
    return-void
.end method
