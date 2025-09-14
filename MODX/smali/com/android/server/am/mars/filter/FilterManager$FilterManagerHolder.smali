.class public abstract Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/FilterManager;

    .line 3
    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterManager;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 8
    return-void
.end method
