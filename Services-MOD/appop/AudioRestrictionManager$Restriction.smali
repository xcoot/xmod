.class public final Lcom/android/server/appop/AudioRestrictionManager$Restriction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NO_EXCEPTIONS:Landroid/util/ArraySet;


# instance fields
.field public exceptionPackages:Landroid/util/ArraySet;

.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    .line 8
    return-void
.end method
