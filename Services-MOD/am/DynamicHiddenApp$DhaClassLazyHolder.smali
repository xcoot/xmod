.class public abstract Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

.field public static isinitClass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp;

    .line 3
    invoke-direct {v0}, Lcom/android/server/am/DynamicHiddenApp;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    .line 11
    return-void
.end method
